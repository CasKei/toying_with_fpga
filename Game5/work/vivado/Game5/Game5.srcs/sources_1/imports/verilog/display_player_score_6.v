/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module display_player_score_6 (
    input clk,
    input rst,
    input [7:0] value,
    output reg [6:0] segs,
    output reg [1:0] digits
  );
  
  
  
  wire [7-1:0] M_seg_display_seg;
  wire [4-1:0] M_seg_display_sel;
  reg [16-1:0] M_seg_display_values;
  multi_seven_seg_12 seg_display (
    .clk(clk),
    .rst(rst),
    .values(M_seg_display_values),
    .seg(M_seg_display_seg),
    .sel(M_seg_display_sel)
  );
  
  always @* begin
    segs = 1'h0;
    digits = 1'h0;
    M_seg_display_values = 16'h0000;
    
    case (value)
      8'h00: begin
        M_seg_display_values = 16'h0000;
      end
      8'h01: begin
        M_seg_display_values = 16'h0001;
      end
      8'h02: begin
        M_seg_display_values = 16'h0002;
      end
      8'h03: begin
        M_seg_display_values = 16'h0003;
      end
      8'h04: begin
        M_seg_display_values = 16'h0004;
      end
      8'h05: begin
        M_seg_display_values = 16'h0005;
      end
      8'h06: begin
        M_seg_display_values = 16'h0006;
      end
      8'h07: begin
        M_seg_display_values = 16'h0007;
      end
      8'h08: begin
        M_seg_display_values = 16'h0008;
      end
      8'h09: begin
        M_seg_display_values = 16'h0009;
      end
      8'h0a: begin
        M_seg_display_values = 16'h0010;
      end
      8'h0b: begin
        M_seg_display_values = 16'h0011;
      end
      8'h0c: begin
        M_seg_display_values = 16'h0012;
      end
      8'h0d: begin
        M_seg_display_values = 16'h0013;
      end
      8'h0e: begin
        M_seg_display_values = 16'h0014;
      end
      8'h0f: begin
        M_seg_display_values = 16'h0015;
      end
      8'h10: begin
        M_seg_display_values = 16'h0016;
      end
      8'h11: begin
        M_seg_display_values = 16'h0017;
      end
      8'h12: begin
        M_seg_display_values = 16'h0018;
      end
      8'h13: begin
        M_seg_display_values = 16'h0019;
      end
      8'h14: begin
        M_seg_display_values = 16'h0020;
      end
      8'h15: begin
        M_seg_display_values = 16'h0021;
      end
      8'h16: begin
        M_seg_display_values = 16'h0022;
      end
      8'h17: begin
        M_seg_display_values = 16'h0023;
      end
      8'h18: begin
        M_seg_display_values = 16'h0024;
      end
      8'h19: begin
        M_seg_display_values = 16'h0025;
      end
      8'h1a: begin
        M_seg_display_values = 16'h0026;
      end
      8'h1b: begin
        M_seg_display_values = 16'h0027;
      end
      8'h1c: begin
        M_seg_display_values = 16'h0028;
      end
      8'h1d: begin
        M_seg_display_values = 16'h0029;
      end
      8'h1e: begin
        M_seg_display_values = 16'h0030;
      end
      8'h1f: begin
        M_seg_display_values = 16'h0031;
      end
      8'h20: begin
        M_seg_display_values = 16'h0032;
      end
      8'h21: begin
        M_seg_display_values = 16'h0033;
      end
      8'h22: begin
        M_seg_display_values = 16'h0034;
      end
      8'h23: begin
        M_seg_display_values = 16'h0035;
      end
      8'h24: begin
        M_seg_display_values = 16'h0036;
      end
      8'h25: begin
        M_seg_display_values = 16'h0037;
      end
      8'h26: begin
        M_seg_display_values = 16'h0038;
      end
      8'h27: begin
        M_seg_display_values = 16'h0039;
      end
      8'h28: begin
        M_seg_display_values = 16'h0040;
      end
      8'h29: begin
        M_seg_display_values = 16'h0041;
      end
      8'h2a: begin
        M_seg_display_values = 16'h0042;
      end
      8'h2b: begin
        M_seg_display_values = 16'h0043;
      end
      8'h2c: begin
        M_seg_display_values = 16'h0044;
      end
      8'h2d: begin
        M_seg_display_values = 16'h0045;
      end
      8'h2e: begin
        M_seg_display_values = 16'h0046;
      end
      8'h2f: begin
        M_seg_display_values = 16'h0047;
      end
      8'h30: begin
        M_seg_display_values = 16'h0048;
      end
      8'h31: begin
        M_seg_display_values = 16'h0049;
      end
      8'h32: begin
        M_seg_display_values = 16'h0050;
      end
      8'h33: begin
        M_seg_display_values = 16'h0051;
      end
      8'h34: begin
        M_seg_display_values = 16'h0052;
      end
      8'h35: begin
        M_seg_display_values = 16'h0053;
      end
      8'h36: begin
        M_seg_display_values = 16'h0054;
      end
      8'h37: begin
        M_seg_display_values = 16'h0055;
      end
      8'h38: begin
        M_seg_display_values = 16'h0056;
      end
      8'h39: begin
        M_seg_display_values = 16'h0057;
      end
      8'h3a: begin
        M_seg_display_values = 16'h0058;
      end
      8'h3b: begin
        M_seg_display_values = 16'h0059;
      end
      8'h3c: begin
        M_seg_display_values = 16'h0060;
      end
      8'h3d: begin
        M_seg_display_values = 16'h0061;
      end
      8'h3e: begin
        M_seg_display_values = 16'h0062;
      end
      8'h3f: begin
        M_seg_display_values = 16'h0063;
      end
      8'h40: begin
        M_seg_display_values = 16'h0064;
      end
      8'h41: begin
        M_seg_display_values = 16'h0065;
      end
      8'h42: begin
        M_seg_display_values = 16'h0066;
      end
      8'h43: begin
        M_seg_display_values = 16'h0067;
      end
      8'h44: begin
        M_seg_display_values = 16'h0068;
      end
      8'h45: begin
        M_seg_display_values = 16'h0069;
      end
      8'h46: begin
        M_seg_display_values = 16'h0070;
      end
      8'h47: begin
        M_seg_display_values = 16'h0071;
      end
      8'h48: begin
        M_seg_display_values = 16'h0072;
      end
      8'h49: begin
        M_seg_display_values = 16'h0073;
      end
      8'h4a: begin
        M_seg_display_values = 16'h0074;
      end
      8'h4b: begin
        M_seg_display_values = 16'h0075;
      end
      8'h4c: begin
        M_seg_display_values = 16'h0076;
      end
      8'h4d: begin
        M_seg_display_values = 16'h0077;
      end
      8'h4e: begin
        M_seg_display_values = 16'h0078;
      end
      8'h4f: begin
        M_seg_display_values = 16'h0079;
      end
      8'h50: begin
        M_seg_display_values = 16'h0080;
      end
      8'h51: begin
        M_seg_display_values = 16'h0081;
      end
      8'h52: begin
        M_seg_display_values = 16'h0082;
      end
      8'h53: begin
        M_seg_display_values = 16'h0083;
      end
      8'h54: begin
        M_seg_display_values = 16'h0084;
      end
      8'h55: begin
        M_seg_display_values = 16'h0085;
      end
      8'h56: begin
        M_seg_display_values = 16'h0086;
      end
      8'h57: begin
        M_seg_display_values = 16'h0087;
      end
      8'h58: begin
        M_seg_display_values = 16'h0088;
      end
      8'h59: begin
        M_seg_display_values = 16'h0089;
      end
      8'h5a: begin
        M_seg_display_values = 16'h0090;
      end
      8'h5b: begin
        M_seg_display_values = 16'h0091;
      end
      8'h5c: begin
        M_seg_display_values = 16'h0092;
      end
      8'h5d: begin
        M_seg_display_values = 16'h0093;
      end
      8'h5e: begin
        M_seg_display_values = 16'h0094;
      end
      8'h5f: begin
        M_seg_display_values = 16'h0095;
      end
      8'h60: begin
        M_seg_display_values = 16'h0096;
      end
      8'h61: begin
        M_seg_display_values = 16'h0097;
      end
      8'h62: begin
        M_seg_display_values = 16'h0098;
      end
      8'h63: begin
        M_seg_display_values = 16'h0099;
      end
    endcase
    segs = ~M_seg_display_seg;
    digits = ~M_seg_display_sel;
  end
endmodule
