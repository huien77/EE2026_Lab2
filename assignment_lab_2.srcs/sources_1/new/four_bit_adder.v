`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2021 09:59:34
// Design Name: 
// Module Name: four_bit_adder
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


module four_bit_adder(input [3:0] A, B, input C0, output [3:0] S, output C4);

    wire C1;
    wire C2;
    wire C3;
    
    one_bit_adder fa3 (A[0], B[0], C0, S[0], C1);
    one_bit_adder fa4 (A[1], B[1], C1, S[1], C2);
    one_bit_adder fa5 (A[2], B[2], C2, S[2], C3);
    one_bit_adder fa6 (A[3], B[3], C3, S[3], C4);
    
endmodule
