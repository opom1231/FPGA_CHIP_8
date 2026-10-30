`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2026 02:32:02 PM
// Design Name: 
// Module Name: cpu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cpu(
    input clk,
    input rst,
    input [7:0] rom_instr,
    input vram_read_data,
    
    output reg [11:0] rom_addr,
    output reg cpu_write_en,
    
    // VRAM
    output reg [12:0] vram_addr,
    output reg vram_write_data,
    output reg vram_write_en
    
    );
    reg [4:0] state;
    reg [11:0] pc; // Program counter, holds address of next instruction
    reg [15:0] ir; // Index register, points to specific memory addresses
    reg [15:0] op; // Opcode, holds current instruction pulled from memory
    
    // BRAM output needs time to stabilize 
    reg [1:0] wait_cnt;
   
    // General puprpose registers
    (* ram_style = "registers" *) reg [7:0] v [0:15];
    
    // Pixel coordinates
    reg [5:0] start_x;
    reg [4:0] start_y;
    
    // Loop trackers
    reg [3:0] sprite_height; // Stores 'N' from opcode
    reg [3:0] row_cnt; // Current row index 
    reg [2:0] bit_cnt; // Current column index
    reg [7:0] sprite_byte; // 8-bit row fetched from memory
     
    
    // States
    
    // Opcode needs 16 bits while ROM outputs 8 bits at a time
    localparam STATE_FETCH_1 = 3'd0; // First 8 bits 
    localparam STATE_FETCH_2 = 3'd1; // Last 8 bits
    localparam STATE_DECODE = 3'd2;
    localparam STATE_CLEAR = 3'd3;
    localparam STATE_DRAW_FETCH = 3'd4; // For fetching sprite bits from ROM
    localparam STATE_DRAW_PIXEL = 3'd5;
    
    localparam X_OFF = 16;   // (96-64)/2
    localparam Y_OFF = 16;   // (64-32)/2
    
    wire [12:0] gx    = X_OFF + start_x + bit_cnt;
    wire [12:0] gy    = Y_OFF + start_y + row_cnt;
    wire [12:0] gaddr = (gy << 6) + (gy << 5) + gx;   // gy*96 + gx
    always @(posedge clk) begin
        if (rst) begin
            state <= 0;
            pc <= 12'h200;
            wait_cnt <= 0;
            vram_write_en <= 0;
        end
        
        else begin
            vram_write_en <= 0;
            case(state)
                STATE_FETCH_1: begin
                    rom_addr <= pc;
                    
                    // Wait for data to stabilize
                    if (wait_cnt < 2) begin
                        wait_cnt <= wait_cnt + 1;
                    end else begin
                        wait_cnt <= 0;
                        
                        // Capture incoming 8 bit instruction into top half of opcode
                        op[15:8] <= rom_instr;
                        // Increment PC
                        pc <= pc + 1;                   
                        state <= STATE_FETCH_2;
                    end
                end
                
                STATE_FETCH_2: begin
                    rom_addr <= pc;
                    
                    if (wait_cnt < 2) begin
                        wait_cnt <= wait_cnt + 1;
                    end else begin
                        wait_cnt <= 0;
                        op[7:0] <= rom_instr;
                        pc <= pc + 1;
                        state <= STATE_DECODE;         
                    end
                end
                
                STATE_DRAW_FETCH: begin
                    // Sprites are stored in ROM starting at address held in IR
                    rom_addr <= ir + row_cnt;
                    
                    // Wait for address to stablize 
                    if (wait_cnt < 2) begin
                        wait_cnt <= wait_cnt + 1;
                    end else begin
                        wait_cnt <= 0;
                        // Store fetched data into sprite register
                        sprite_byte <= rom_instr;
                        state <= STATE_DRAW_PIXEL;
                    end
                
                end
                
                STATE_DRAW_PIXEL: begin
                    vram_write_en <= 0;
                    // Go through each of the 8 sprite bits fetched from ROM
                    if(sprite_byte[7 - bit_cnt]) begin // Bit is ON
                        // Calculate the VRAM address of current pixel
                        vram_addr <= gaddr;  
                        vram_write_en <= 0; 
                        
                        // Wait for ROM output
                        if(wait_cnt < 2) begin
                            wait_cnt <= wait_cnt + 1;
                        end else begin
                            wait_cnt <= 0;
                            vram_write_en <= 1;
                            vram_write_data <= ~vram_read_data;
                            // Pixel in byte is handeled, advance counters
                            if (bit_cnt < 7) begin
                                bit_cnt <= bit_cnt + 1;
                            end else if (row_cnt < sprite_height - 1) begin
                                bit_cnt <= 0;
                                row_cnt <= row_cnt + 1;
                                state <= STATE_DRAW_FETCH;
                            end else begin
                                state <= STATE_FETCH_1; // entire sprite is finished drawing                                
                            end 
                            
                            // Collision detection (XOR)
                            if (vram_read_data) begin
                                // Set collision flag
                                v[15] <= 1;                               
                            end
                        end    
                        
                    end else begin    // Bit is OFF
                        vram_write_en <= 0; // Cannot write anything
                        // Pixel in byte is handeled, advance counters
                        if (bit_cnt < 7) begin
                            bit_cnt <= bit_cnt + 1;
                        end else if (row_cnt < sprite_height - 1) begin
                            bit_cnt <= 0;
                            row_cnt <= row_cnt + 1;
                            state <= STATE_DRAW_FETCH;
                        end else begin
                            state <= STATE_FETCH_1; // entire sprite is finished drawing                                
                        end
                    end
                
                end
                
                STATE_DECODE: begin    
                    case(op[15:12])
                        
                        // Root 0: Must check lower 8 bits
                        4'h0: begin
                            if (op[7:0] == 8'hE0) begin
                                // 00E0: Clear Screen
                                vram_addr <= 0;
                                state <= STATE_CLEAR;
                            end else begin
                                state <= STATE_FETCH_1;
                            end
                        end
                        
                        // Root 1: Jump, sets PC to NNN address
                        4'h1: begin
                            pc <= op[11:0];
                            state <= STATE_FETCH_1;
                        end
                        
                        // Root 6: Set (6XNN), set register VX to NN
                        4'h6: begin
                            v[op[11:8]] <= op[7:0];
                            state <= STATE_FETCH_1;
                        end
                        
                        // Root 7: Add (7XNN), add NN to VX
                        4'h7: begin
                            v[op[11:8]] <= op[7:0] + v[op[11:8]];
                            state <= STATE_FETCH_1;
                        end
                        
                        // Root A: Set index (ANNN), sets IR to NNN
                        4'hA: begin
                            ir <= op[11:0];
                            state <= STATE_FETCH_1;
                        end
                        
                        // Root D: Draw (DXYN), draws to screen
                        4'hD: begin
                            // Fetch starting x, y coordinates and sprite height
                            start_x <= v[op[11:8]][5:0]; 
                            start_y <= v[op[7:4]][4:0];
                            sprite_height <= op[3:0];
                            
                            // Reset collision flag
                            v[15] <= 0;
                            
                            // Reset row and bit counter registers
                            bit_cnt <= 0;
                            row_cnt <= 0;
                            
                            state <= STATE_DRAW_FETCH;
                        end
                        
                        
                        default: begin
                            state <= STATE_FETCH_1;
                        end
                    endcase
                    
                end
                
                // Goes through each pixel and clears data (set to 0)
                STATE_CLEAR: begin
                    if (vram_addr == 13'd6144) begin
                        // Finished clearing screen, fetch next instruction
                        vram_write_en <= 0;
                        state <= STATE_FETCH_1;
                    end else begin
                        vram_write_en <= 1;
                        vram_write_data <= 0;
                        vram_addr <= vram_addr + 1;
                    end
                end
            
            
            endcase
        end
    
    
    end
    
    
endmodule
