`timescale 1ns / 1ps

module lfsr_tb;
reg clc,rst;
wire [3:0] out;
 lfsr uut(out,clc,rst);
 always begin 
 #20 clc=~clc;
 end
 initial begin
  clc=0; rst= 1;
  #15;
    rst=0;
    #200;
    end
endmodule
