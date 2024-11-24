`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 03:50:35 PM
// Design Name: 
// Module Name: Fixed_Multi
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
module Fixed_Multi #(parameter n1 = 8, parameter n2 = 8, parameter m1 = 8, parameter m2 = 8)(
    input logic [n1+m1-1:0] a,        // Input a with n1+m1 bits
    input logic [n2+m2-1:0] b,        // Input b with n2+m2 bits
    output logic [n1+n2-1:0] resi,    // Integer part of the result
    output logic [m1+m2-1:0] resd     // Fractional part of the result
);

    always_comb begin
        {resi, resd} = a * b; // Fixed-point multiplication
    end

endmodule

