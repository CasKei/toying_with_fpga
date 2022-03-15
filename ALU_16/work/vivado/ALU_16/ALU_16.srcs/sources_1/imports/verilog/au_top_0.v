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
  
  wire [16-1:0] M_inputstorer_outA;
  wire [16-1:0] M_inputstorer_outB;
  reg [1-1:0] M_inputstorer_clk;
  reg [1-1:0] M_inputstorer_rst;
  reg [1-1:0] M_inputstorer_button_a;
  reg [1-1:0] M_inputstorer_button_b;
  reg [16-1:0] M_inputstorer_value;
  input_storer_1 inputstorer (
    .clk(M_inputstorer_clk),
    .rst(M_inputstorer_rst),
    .button_a(M_inputstorer_button_a),
    .button_b(M_inputstorer_button_b),
    .value(M_inputstorer_value),
    .outA(M_inputstorer_outA),
    .outB(M_inputstorer_outB)
  );
  
  wire [16-1:0] M_alu16_out;
  wire [1-1:0] M_alu16_z;
  wire [1-1:0] M_alu16_v;
  wire [1-1:0] M_alu16_n;
  reg [16-1:0] M_alu16_a;
  reg [16-1:0] M_alu16_b;
  reg [6-1:0] M_alu16_alufn;
  reg [1-1:0] M_alu16_sim_error;
  alu_2 alu16 (
    .a(M_alu16_a),
    .b(M_alu16_b),
    .alufn(M_alu16_alufn),
    .sim_error(M_alu16_sim_error),
    .out(M_alu16_out),
    .z(M_alu16_z),
    .v(M_alu16_v),
    .n(M_alu16_n)
  );
  
  wire [1-1:0] M_slowclock_value;
  counter_3 slowclock (
    .clk(clk),
    .rst(rst),
    .value(M_slowclock_value)
  );
  
  wire [1-1:0] M_autotester_result;
  reg [2-1:0] M_autotester_switch;
  reg [1-1:0] M_autotester_sim_error;
  auto_tester_4 autotester (
    .clk(M_slowclock_value),
    .rst(rst),
    .switch(M_autotester_switch),
    .sim_error(M_autotester_sim_error),
    .result(M_autotester_result)
  );
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_5 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    usb_tx = usb_rx;
    led = 8'h00;
    io_led = 24'h000000;
    io_seg = 8'hff;
    io_sel = 4'hf;
    M_alu16_sim_error = io_dip[0+6+0-:1];
    M_autotester_sim_error = io_dip[0+6+0-:1];
    M_inputstorer_clk = clk;
    M_inputstorer_button_a = io_button[3+0-:1];
    M_inputstorer_button_b = io_button[4+0-:1];
    M_inputstorer_value[0+7-:8] = io_dip[8+7-:8];
    M_inputstorer_value[8+7-:8] = io_dip[16+7-:8];
    M_inputstorer_rst = io_button[2+0-:1];
    M_alu16_alufn = io_dip[0+0+5-:6];
    M_alu16_a = M_inputstorer_outA;
    M_alu16_b = M_inputstorer_outB;
    io_led[8+7-:8] = M_alu16_out[0+7-:8];
    io_led[16+7-:8] = M_alu16_out[8+7-:8];
    io_led[0+2+0-:1] = M_alu16_z;
    io_led[0+1+0-:1] = M_alu16_v;
    io_led[0+0+0-:1] = M_alu16_n;
    M_autotester_switch = io_dip[0+7+0-:1];
    if (M_autotester_result == 2'h1) begin
      io_led[0+7+0-:1] = M_autotester_result;
    end else begin
      if (M_autotester_result == 2'h2) begin
        io_led[0+6+0-:1] = M_autotester_result;
      end else begin
        io_led[0+6+1-:2] = 2'h0;
      end
    end
  end
endmodule
