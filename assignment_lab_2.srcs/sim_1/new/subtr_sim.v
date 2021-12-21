`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2021 13:18:23
// Design Name: 
// Module Name: subtr_sim
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


module subtr_sim(

    );
    //inputs
    reg [6:0] A,B;
    //outputs
    wire [6:0] S;
    wire V;
    wire AN0,AN1,AN2,AN3;
    wire dp;
    wire seg0,seg1,seg2,seg3,seg4,seg5,seg6;
       
    seven_bit_subtr s_b_s_sim(
    A,B,S,V,
    AN0,AN1,AN2,AN3,
    dp,
    seg0,seg1,seg2,seg3,seg4,seg5,seg6
    );
    
    initial begin
        A = 7'b1000001;
        B = 7'b1110000;
        #30;
        A = 7'b1010101;
        B = 7'b1001011;
        #30;
        A = 7'b1100100;
        B = 7'b1100100;
        #30;
        A = 7'b1000110;
        B = 7'b0011001;
        #30;
        A = 7'b1010001;
        B = 7'b1101100;
    end
endmodule
