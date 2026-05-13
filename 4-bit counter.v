`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 11:51:28
// Design Name: 
// Module Name: 4-bit counter
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


module counter4bit (
    input wire clk,       // clock input
    input wire reset,     // synchronous reset
    output reg [3:0] count // 4-bit output
);
    always @(posedge clk) begin
        if (reset)
            count <= 4'b0000;       // reset to 0
        else
            count <= count + 1;     // increment
    end
endmodule