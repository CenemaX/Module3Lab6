`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 02:51:42 PM
// Design Name: 
// Module Name: FixedAdder
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


module FixedAdder #(parameter n1 = 8, parameter n2 = 8, parameter m1 = 8, parameter m2 = 8)(
    input logic [n1-1:0] a,        // Input a with n1 bits
    input logic [n2-1:0] b,        // Input b with n2 bits
    output logic [(n1 > n2 ? n1 : n2)-1:0] res // Output res with the maximum width
);

    // Determine the maximum width
    localparam int max_width = (n1 > n2) ? n1 : n2;
//hi :)_
    // Perform addition and assign to res
    always_comb begin
        res = a + b; // Fixed-point addition
    end

endmodule
