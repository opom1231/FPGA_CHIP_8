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
    
    // We need to wait a full clock cycle to register incoming address into ram
    reg read_wait;
   
    // General puprpose registers
    reg [7:0] v [0:15];
    
    // States
    
    // Opcode needs 16 bits while ROM outputs 8 bits at a time
    localparam STATE_FETCH_1 = 3'd0; // First 8 bits 
    localparam STATE_FETCH_2 = 3'd1; // Last 8 bits
    localparam STATE_DECODE = 3'd2;
    localparam STATE_CLEAR = 3'd3;
    
    always @(posedge clk) begin
        if (rst) begin
            state <= 0;
            pc <= 12'h200;
            read_wait <= 0;
            vram_write_en <= 0;
        end
        
        else begin
            case(state)
                STATE_FETCH_1: begin
                    rom_addr <= pc;
                    
                    // Wait for data to stabilize
                    if (!read_wait) begin
                        read_wait <= 1;
                    end else begin
                        read_wait <= 0;
                        
                        // Capture incoming 8 bit instruction into top half of opcode
                        op[15:8] <= rom_instr;
                        // Increment PC
                        pc <= pc + 1;                   
                        state <= STATE_FETCH_2;
                    end
                end
                
                STATE_FETCH_2: begin
                    rom_addr <= pc;
                    
                    if (!read_wait) begin
                        read_wait <= 1;
                    end else begin
                        read_wait <= 0;
                        op[7:0] <= rom_instr;
                        pc <= pc + 1;
                        state <= STATE_DECODE;         
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
