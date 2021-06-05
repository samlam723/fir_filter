// =============================================================================
// Filename: fir_16tap.v
// Author: Lam King Sum, Sam
// Email: ksalmaf@connect.ust.hk
// Affiliation: Hong Kong University of Science and Technology
// -----------------------------------------------------------------------------
// This file implements a the top level architecture of a 16tap FIR filter.
// =============================================================================
module fir_16tap ( 
	input [15:0] x, 
	input clk,reset, 
	output [33:0] y 
);

parameter a0=1;

parameter a1=2;

parameter a2=3;

parameter a3=4;

parameter a4=5;

parameter a5=6;

parameter a6=7;

parameter a7=8;

parameter a8=9;

parameter a9=10;

parameter a10=11;

parameter a11=12;

parameter a12=13;

parameter a13=14;

parameter a14=15;

parameter a15=16;

wire [15:0] m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14;

wire [31:0] m15,m16,m18,m20,m22,m24,m26,m28,m30,m32,m34,m36,m38,m40,m42,m44;

wire [33:0] m17,m19,m21,m23,m25,m27,m29,m31,m33,m35,m37,m39,m41,m43;

dff_16bit q1(x,clk,reset,m0);
dff_16bit q2(m0,clk,reset,m1);
dff_16bit q3(m1,clk,reset,m2);
dff_16bit q4(m2,clk,reset,m3);
dff_16bit q5(m3,clk,reset,m4);
dff_16bit q6(m4,clk,reset,m5);
dff_16bit q7(m5,clk,reset,m6);
dff_16bit q8(m6,clk,reset,m7);
dff_16bit q9(m7,clk,reset,m8);
dff_16bit q10(m8,clk,reset,m9);
dff_16bit q11(m9,clk,reset,m10);
dff_16bit q12(m10,clk,reset,m11);
dff_16bit q13(m11,clk,reset,m12);
dff_16bit q14(m12,clk,reset,m13);
dff_16bit q15(m13,clk,reset,m14);

//Multiplication
assign m15=x*a0;
assign m16=m0*a1;
assign m18=m1*a2;
assign m20=m2*a3;
assign m22=m3*a4;
assign m24=m4*a5;
assign m26=m5*a6;
assign m28=m6*a7;
assign m30=m7*a8;
assign m32=m8*a9;
assign m34=m9*a10;
assign m36=m10*a11;
assign m38=m11*a12;
assign m40=m12*a13;
assign m42=m13*a14;
assign m44=m14*a15;

//Addition
assign m17=m15+m16;
assign m19=m17+m18;
assign m21=m19+m20;
assign m23=m21+m22;
assign m25=m23+m24;
assign m27=m25+m26;
assign m29=m27+m28;
assign m31=m29+m30;
assign m33=m31+m32;
assign m35=m33+m34;
assign m37=m35+m36;
assign m39=m37+m38;
assign m41=m39+m40;
assign m43=m41+m42;
assign y=m43+m44;

endmodule

module dff_16bit(
	input [15:0] d,
	input clk,reset,
	output reg [15:0] q
);

always@(posedge clk or negedge reset)
begin
  if(reset==1'b0)
    q <= 1'b0; 
else 
  q <= d; 
end 

endmodule
