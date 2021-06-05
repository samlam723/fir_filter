// =============================================================================
// Filename: fir_16tap_tb.v
// -----------------------------------------------------------------------------
// This file exports the testbench for fir_16tap.
// =============================================================================
`timescale 1 ns / 1 ps

module fir_16tap_tb();

// ----------------------------------
// Interface of the module
// ----------------------------------
reg [15:0] x;
reg clk,reset;
wire [33:0] y;

// ----------------------------------
// Instantiate the module
// ----------------------------------
fir_16tap uut(
	.x(x),
	.clk(clk),
	.reset(reset),
	.y(y)
); 

// ----------------------------------
// Input stimulus
// ----------------------------------
initial begin 

clk=1'b0;
  forever #10 clk = ~clk;  
  
end


initial begin 
reset = 1;

x<=1;
#1000
$display("For x= %d", x);
$display("m0 = %0d,m1 = %0d ,m2 = %0d ,m3 = %0d,m4 = %0d ,m5 = %0d ,m6 = %0d,m7 = %0d ,m8 = %0d ,m9 = %0d,m10 = %0d ,m11 = %0d ,m12 = %0d,m13 = %0d ,m14 = %0d ", uut.m0,uut.m1,uut.m2,uut.m3, uut.m4,uut.m5,uut.m6, uut.m7,uut.m8,uut.m9, uut.m10,uut.m11,uut.m12, uut.m13,uut.m14);
$display("m15 = %0d,m16 = %0d ,m18 = %0d ,m20 = %0d,m22 = %0d ,m24 = %0d ,m26 = %0d,m28 = %0d ,m30 = %0d ,m32 = %0d,m34 = %0d ,m36 = %0d ,m38 = %0d,m40 = %0d ,m42 = %0d ,m44 = %0d ", uut.m15,uut.m16,uut.m18,uut.m20, uut.m22,uut.m24,uut.m26,uut.m28, uut.m30,uut.m32,uut.m34,uut.m36,uut.m38, uut.m40,uut.m42,uut.m44);
$display("m17 = %0d,m19 = %0d ,m21 = %0d ,m23 = %0d,m25 = %0d ,m27 = %0d ,m29 = %0d,m31 = %0d ,m33 = %0d ,m35 = %0d,m37 = %0d ,m39 = %0d ,m41 = %0d,m43 = %0d", uut.m17,uut.m19,uut.m21,uut.m23, uut.m25,uut.m27,uut.m29,uut.m31, uut.m33,uut.m35,uut.m37,uut.m39,uut.m41,uut.m43);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=2;
#1000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=3;
reset=1;
#1000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=4;
reset=1;
#1000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=5;
reset=1;
#1000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=6;
reset=1;
#1000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=7;
reset=1;
#1000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=8;
reset=1;
#1000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=9;
reset=1;
#1000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=10;
reset=1;
#1000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=11;
reset=1;
#1000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=12;
reset=1;
#1000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=13;
reset=1;
#1000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=14;
reset=1;
#1000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=15;
reset=1;
#1000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=16;
reset=1;
#1000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

end



endmodule
