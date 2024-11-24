`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 05:53:07 AM
// Design Name: 
// Module Name: Fixed_Multi_sim
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
/*
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
a=4'b1111;
b=4'b0001;
#10
#10;

end
endmodule
*/

module Fixed_Multi_sim;

logic [(m1+n1)-1:0]a;
logic [(m2+n2)-1:0]b;

localparam n1=4;
localparam n2=2;
localparam m1=4;
localparam m2=2;

logic [(n1+n2)+(m1+m2)-1:0]res;

Fixed_Multi #(.n1(n1),.n2(n2),.m1(m1),.m2(m2)) fa1(.a(a),.b(b),.resi(res));



initial begin
#10 
$display("\t%b\t",res);
a=8'b00011111;
b=4'b0001;
#10
#10;

end
endmodule
