/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module auto_tester_4 (
    input clk,
    input rst,
    input [0:0] switch,
    input [0:0] sim_error,
    output reg [0:0] result
  );
  
  
  
  
  localparam START_feeder = 5'd0;
  localparam ADD_feeder = 5'd1;
  localparam ADD1_feeder = 5'd2;
  localparam ADD2_feeder = 5'd3;
  localparam ADD3_feeder = 5'd4;
  localparam SUB_feeder = 5'd5;
  localparam SUB1_feeder = 5'd6;
  localparam SUB2_feeder = 5'd7;
  localparam SUB3_feeder = 5'd8;
  localparam CMPEQT_feeder = 5'd9;
  localparam CMPEQF_feeder = 5'd10;
  localparam CMPLTT_feeder = 5'd11;
  localparam CMPLTF_feeder = 5'd12;
  localparam CMPLET_feeder = 5'd13;
  localparam CMPLEF_feeder = 5'd14;
  localparam CMPLETE_feeder = 5'd15;
  localparam AND_feeder = 5'd16;
  localparam OR_feeder = 5'd17;
  localparam XOR_feeder = 5'd18;
  localparam NOR_feeder = 5'd19;
  localparam NAND_feeder = 5'd20;
  localparam B_feeder = 5'd21;
  localparam A_feeder = 5'd22;
  localparam SHL_feeder = 5'd23;
  localparam SHR_feeder = 5'd24;
  localparam SLA_feeder = 5'd25;
  localparam SRA_feeder = 5'd26;
  localparam PASS_feeder = 5'd27;
  localparam FAIL_feeder = 5'd28;
  
  reg [4:0] M_feeder_d, M_feeder_q = START_feeder;
  
  wire [38-1:0] M_inputs_out;
  reg [5-1:0] M_inputs_selector;
  rom1_12 inputs (
    .selector(M_inputs_selector),
    .out(M_inputs_out)
  );
  
  wire [19-1:0] M_answers_out;
  reg [5-1:0] M_answers_selector;
  rom2_13 answers (
    .selector(M_answers_selector),
    .out(M_answers_out)
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
  
  reg [15:0] a;
  reg [15:0] b;
  reg [5:0] alufn;
  reg [15:0] s;
  reg z;
  reg v;
  reg n;
  reg [15:0] out;
  
  always @* begin
    M_feeder_d = M_feeder_q;
    
    M_inputs_selector = 5'h00;
    M_answers_selector = 5'h00;
    M_alu16_a = 16'h0000;
    M_alu16_b = 16'h0000;
    M_alu16_sim_error = sim_error;
    M_alu16_alufn = 6'h00;
    result = 2'h0;
    
    case (M_feeder_q)
      START_feeder: begin
        if (switch) begin
          M_feeder_d = ADD_feeder;
        end else begin
          M_feeder_d = START_feeder;
        end
      end
      ADD_feeder: begin
        M_inputs_selector = 5'h00;
        M_answers_selector = 5'h00;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = ADD1_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      ADD1_feeder: begin
        M_inputs_selector = 5'h01;
        M_answers_selector = 5'h01;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = ADD2_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      ADD2_feeder: begin
        M_inputs_selector = 5'h02;
        M_answers_selector = 5'h02;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = ADD3_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      ADD3_feeder: begin
        M_inputs_selector = 5'h03;
        M_answers_selector = 5'h03;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = SUB_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      SUB_feeder: begin
        M_inputs_selector = 5'h04;
        M_answers_selector = 5'h04;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = SUB1_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      SUB1_feeder: begin
        M_inputs_selector = 5'h05;
        M_answers_selector = 5'h05;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = SUB2_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      SUB2_feeder: begin
        M_inputs_selector = 5'h06;
        M_answers_selector = 5'h06;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = SUB3_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      SUB3_feeder: begin
        M_inputs_selector = 5'h07;
        M_answers_selector = 5'h07;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = CMPEQT_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      CMPEQT_feeder: begin
        M_inputs_selector = 5'h08;
        M_answers_selector = 5'h08;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = CMPEQF_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      CMPEQF_feeder: begin
        M_inputs_selector = 5'h09;
        M_answers_selector = 5'h09;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = CMPLTT_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      CMPLTT_feeder: begin
        M_inputs_selector = 5'h0a;
        M_answers_selector = 5'h0a;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = CMPLTF_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      CMPLTF_feeder: begin
        M_inputs_selector = 5'h0b;
        M_answers_selector = 5'h0b;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = CMPLET_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      CMPLET_feeder: begin
        M_inputs_selector = 5'h0c;
        M_answers_selector = 5'h0c;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = CMPLEF_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      CMPLEF_feeder: begin
        M_inputs_selector = 5'h0d;
        M_answers_selector = 5'h0d;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = CMPLETE_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      CMPLETE_feeder: begin
        M_inputs_selector = 5'h0e;
        M_answers_selector = 5'h0e;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = AND_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      AND_feeder: begin
        M_inputs_selector = 5'h0f;
        M_answers_selector = 5'h0f;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = OR_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      OR_feeder: begin
        M_inputs_selector = 5'h10;
        M_answers_selector = 5'h10;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = XOR_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      XOR_feeder: begin
        M_inputs_selector = 5'h11;
        M_answers_selector = 5'h11;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = NOR_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      NOR_feeder: begin
        M_inputs_selector = 5'h12;
        M_answers_selector = 5'h12;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = NAND_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      NAND_feeder: begin
        M_inputs_selector = 5'h13;
        M_answers_selector = 5'h13;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = B_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      B_feeder: begin
        M_inputs_selector = 5'h14;
        M_answers_selector = 5'h14;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = A_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      A_feeder: begin
        M_inputs_selector = 5'h15;
        M_answers_selector = 5'h15;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = SHL_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      SHL_feeder: begin
        M_inputs_selector = 5'h16;
        M_answers_selector = 5'h16;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = SHR_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      SHR_feeder: begin
        M_inputs_selector = 5'h17;
        M_answers_selector = 5'h17;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = SLA_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      SLA_feeder: begin
        M_inputs_selector = 5'h18;
        M_answers_selector = 5'h18;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = SRA_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      SRA_feeder: begin
        M_inputs_selector = 5'h19;
        M_answers_selector = 5'h19;
        a = M_inputs_out[22+15-:16];
        b = M_inputs_out[6+15-:16];
        alufn = M_inputs_out[0+5-:6];
        s = M_answers_out[3+15-:16];
        z = M_answers_out[2+0-:1];
        v = M_answers_out[1+0-:1];
        n = M_answers_out[0+0-:1];
        M_alu16_alufn = alufn;
        M_alu16_a = a;
        M_alu16_b = b;
        out = M_alu16_out;
        if (out == s & M_alu16_z == z & M_alu16_v == v & M_alu16_n == n) begin
          M_feeder_d = PASS_feeder;
        end else begin
          M_feeder_d = FAIL_feeder;
        end
      end
      PASS_feeder: begin
        result = 2'h1;
      end
      FAIL_feeder: begin
        result = 2'h0;
        if (switch) begin
          M_feeder_d = START_feeder;
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_feeder_q <= 1'h0;
    end else begin
      M_feeder_q <= M_feeder_d;
    end
  end
  
endmodule
