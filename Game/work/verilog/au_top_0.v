/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module au_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input usb_rx,
    output reg usb_tx,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    input [4:0] io_button,
    input [23:0] io_dip
  );
  
  
  
  reg rst;
  
  wire [6-1:0] M_game_alufn;
  wire [2-1:0] M_game_asel;
  wire [3-1:0] M_game_bsel;
  wire [2-1:0] M_game_alu_out_sel;
  wire [4-1:0] M_game_regfile_write_address;
  wire [4-1:0] M_game_regfile_read_address_a;
  wire [4-1:0] M_game_regfile_read_address_b;
  wire [1-1:0] M_game_we_regfile;
  wire [1-1:0] M_game_decimal_counter_increase;
  wire [1-1:0] M_game_decimal_counter_rst;
  wire [1-1:0] M_game_score_rst;
  wire [4-1:0] M_game_debug;
  wire [3-1:0] M_game_diceout;
  reg [16-1:0] M_game_regfile_datain;
  reg [1-1:0] M_game_p1_rolldicebutton;
  reg [1-1:0] M_game_p1_holdbutton;
  reg [1-1:0] M_game_p2_rolldicebutton;
  reg [1-1:0] M_game_p2_holdbutton;
  game_CU_1 game (
    .clk(clk),
    .rst(rst),
    .regfile_datain(M_game_regfile_datain),
    .p1_rolldicebutton(M_game_p1_rolldicebutton),
    .p1_holdbutton(M_game_p1_holdbutton),
    .p2_rolldicebutton(M_game_p2_rolldicebutton),
    .p2_holdbutton(M_game_p2_holdbutton),
    .alufn(M_game_alufn),
    .asel(M_game_asel),
    .bsel(M_game_bsel),
    .alu_out_sel(M_game_alu_out_sel),
    .regfile_write_address(M_game_regfile_write_address),
    .regfile_read_address_a(M_game_regfile_read_address_a),
    .regfile_read_address_b(M_game_regfile_read_address_b),
    .we_regfile(M_game_we_regfile),
    .decimal_counter_increase(M_game_decimal_counter_increase),
    .decimal_counter_rst(M_game_decimal_counter_rst),
    .score_rst(M_game_score_rst),
    .debug(M_game_debug),
    .diceout(M_game_diceout)
  );
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_2 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  
  wire [7-1:0] M_display_segs;
  reg [3-1:0] M_display_char;
  dice_seg_3 display (
    .char(M_display_char),
    .segs(M_display_segs)
  );
  
  always @* begin
    M_game_p1_rolldicebutton = io_button[0+0-:1];
    M_game_p1_holdbutton = io_button[1+0-:1];
    M_game_p2_rolldicebutton = io_button[2+0-:1];
    M_game_p2_holdbutton = io_button[3+0-:1];
    M_game_regfile_datain = 1'h0;
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    usb_tx = usb_rx;
    led = 8'h00;
    io_led = 24'h000000;
    io_seg = 8'hff;
    io_sel = 4'hf;
    io_seg = ~M_display_segs;
    M_display_char = M_game_diceout;
    io_sel = 4'he;
  end
endmodule
