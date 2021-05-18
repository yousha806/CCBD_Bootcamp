
module bar (input wire i, output wire o, input wire i1, i2, output wire o1, o2);
   assign o1 = i;
   assign o2 = i;
   or2 or2_0 (i1, i2, o);
endmodule

module dot (input wire i, output wire o, input wire i1, i2, output wire o1, o2);
   assign o1 = i;
   assign o2 = i1;
   assign o = i2;
endmodule

module star (input wire i, output wire o, input wire i1, output wire o1);
   or2 or2_0 (i, i1, o1);
   assign o = o1;
endmodule

module zero_bar_one (input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   bar bar_0 (i, o, i1, i2, o1, o2);
   char_zero char_zero_0 (clk, reset, o1, i_c, i1);
   char_one   char_one_0 (clk, reset, o2, i_c, i2);
endmodule

module zero_dot_one (input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   char_zero char_zero_1 (clk, reset, o1, i_c, i1);
   char_one char_one_2 (clk, reset, o2, i_c, i2); 
endmodule

module zero_bar_one_star (input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, o1;
   star star_0 (i, o, i1, o1);
   zero_bar_one zero_bar_one_1 (clk, reset, o1, i_c, i1);
endmodule
/*module dff (input d,  
               input clk,  
               input reset,  
               output reg q,  
               output qn);  
   always @ (posedge clk or negedge reset)  
      if (!reset)  
         q <= 0;  
      else  
         q <= d;  
  
   assign qn = ~q;  
endmodule*/
 
module reg_final (input wire clk, reset, i, input wire i_c, output wire o);
wire [18:0] i1;
//wire [4:0] i1;

  zero_bar_one zero_bar_1(clk, reset, i, i_c, i1[0]);
   zero_bar_one zero_bar_2(clk, reset, i1[0], i_c, i1[1]);
   zero_bar_one zero_bar_3(clk, reset, i1[1], i_c,i1[2]);
   zero_bar_one zero_bar_4(clk, reset, i1[2], i_c, i1[3]);
   zero_bar_one zero_bar_5(clk, reset, i1[3], i_c, i1[4]);
   zero_bar_one zero_bar_6(clk, reset, i1[4], i_c, i1[5]);
   zero_bar_one zero_bar_7(clk, reset, i1[5], i_c, i1[6]);
   zero_bar_one zero_bar_8(clk, reset, i1[6], i_c, i1[7]);
   zero_bar_one zero_bar_9(clk, reset, i1[7], i_c, i1[8]);
   zero_bar_one zero_bar_10(clk, reset, i1[8], i_c,i1[9]);
   zero_bar_one zero_bar_11(clk, reset, i1[9], i_c, i1[10]);
   zero_bar_one zero_bar_12(clk, reset, i1[10], i_c, i1[11]);
   zero_bar_one zero_bar_13(clk, reset, i1[11], i_c, i1[12]);
   zero_bar_one zero_bar_14(clk, reset, i1[12], i_c, i1[13]);
   zero_bar_one zero_bar_15(clk, reset, i1[13], i_c, i1[14]);
   zero_bar_one zero_bar_16(clk, reset, i1[14], i_c, i1[15]);
   zero_bar_one zero_bar_17(clk, reset, i1[15], i_c, i1[16]);
   zero_bar_one zero_bar_18(clk, reset, i1[16], i_c, i1[17]);
   zero_bar_one zero_bar_19(clk, reset, i1[17], i_c, i1[18]);
   zero_bar_one zero_bar_20(clk, reset, i1[18], i_c, o);
   //zero_bar_one zero_bar_nineteen(clk, reset, i, i_c, o);
  // zero_bar_one zero_bar_twenty(clk, reset, i, i_c, o);
   
endmodule 

module zero_bar_one_star_one (input wire clk, reset, i, input wire i_c, output wire o);
   
   wire i1;
   wire i2;
   wire o1;
   wire o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star zero_bar_one_star_1 (clk, reset, o1, i_c, i1);
   char_one   char_one_1 (clk, reset, o2, i_c, i2);
  

endmodule 

module regex (input wire clk, reset, i, input wire i_c, output wire o);
   // zero bar one star zero dot one
   wire  i1; 
   wire i2; 
   wire [1:0] i3;
   wire  o1;
   wire  o2;
 // dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_one part1 (clk, reset, i, i_c, i1);
   reg_final reg1 (clk, reset, i1, i_c, o);
   /*xnor2 x1(o1[0],1'b0,i2[0]);
   xnor2 x2(o1[1],1'b0,i2[1]);
   xnor2 x3(o1[2],1'b1,i2[2]);
   xnor2 x4(o1[3],1'b0,i2[3]);
   xnor2 x5(o1[4],1'b1,i2[4]);
   and3 a1(i2[0],i2[1],i2[2],i3[0]);
   and2 a2(i2[3],i2[4],i3[1]);
   and2 a3(i3[0],i3[1],o);
  
   assign count = 5'b0;*/
endmodule
