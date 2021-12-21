`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2021 10:02:28
// Design Name: 
// Module Name: seven_bit_subtr
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


module seven_bit_subtr(
    //switches
    input [6:0] A,B,
    //output of LEDs corresponding to switches
    output [6:0] S,
    output V,
    //anode
    output AN0,AN1,AN2,AN3,
    //segment LEDs
    output dp,
    output seg0,seg1,seg2,seg3,seg4,seg5,seg6
    
    );
    //anode value: 1 (0001)
    assign AN0 = 1;
    assign AN1 = 0;
    assign AN2 = 0;
    assign AN3 = 0;
    //display N: seg2, seg4, seg6
    assign dp = 1;
    assign seg0 = 1;
    assign seg1 = 1;
    assign seg2 = 0;
    assign seg3 = 1;
    assign seg4 = 0;
    assign seg5 = 1;
    assign seg6 = 0;
    //subtr
    wire C0;
    wire C1;
    wire C2;
    wire C01;
    wire C02;
    wire [6:0] n_one;
    wire [6:0] B2;
    assign C0 = 1'b0;
    assign n_one = 7'b1111111;
    
    four_bit_adder f_b_a_0 (n_one[3:0],B[3:0],C0,B2[3:0],C01);
    three_bit_adder t_b_a_0 (n_one[6:4],B[6:4],C01,B2[6:4],C02);
    
    four_bit_adder f_b_a (A[3:0],~B2[3:0],C0,S[3:0],C1);
    three_bit_adder t_b_a (A[6:4],~B2[6:4],C1,S[6:4],C2);
    
    assign V = (A[6] == B2[6] & C2 == A[6])? 1 : 0;
    
endmodule
