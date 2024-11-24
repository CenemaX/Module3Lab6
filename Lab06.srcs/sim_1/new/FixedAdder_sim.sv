`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 04:19:43 AM
// Design Name: 
// Module Name: FixedAdder_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revisi   on:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
/*
module FixedAdder #(parameter n1 = 8, parameter n2 = 8, parameter m1 = 8, parameter m2 = 8)(
    input logic [n1 +m1-1:0] a,        // Input a with n1 bits
    input logic [n2+m2 -1:0] b,        // Input b with n2 bits
    output logic [(n1 > n2 ? n1 : n2)+ (m1 > m2 ? m1 : m2):0] res // Output res with the maximum width
);


    always_comb begin
        res = a + b; // Fixed-point addition
    end

endmodule
*/

module FixedAdder_sim;

logic [(m1+n1)-1:0]a;
logic [(m2+n2)-1:0]b;

localparam n1=4;
localparam n2=2;
localparam m1=4;
localparam m2=2;



localparam nmax= n1 > n2 ? n1 : n2;
localparam mmax= m1 > m2 ? m1 : m2;


logic [nmax+mmax:0]res;

FixedAdder #(.n1(n1),.n2(n2),.m1(m1),.m2(m2)) fa1(.a(a),.b(b),.res(res));



initial begin
#10 
$display("\t%b\t",res);
a=8'b00101000;
b=4'b1001;
#10
#10;

end
endmodule