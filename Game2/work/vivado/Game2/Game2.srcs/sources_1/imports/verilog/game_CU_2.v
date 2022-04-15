/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module game_CU_2 (
    input clk,
    input rst,
    input p1rollbtn,
    input p1holdbtn,
    input p2rollbtn,
    input p2holdbtn,
    output reg [0:0] playerturn,
    output reg [7:0] p1curr,
    output reg [7:0] p1acc,
    output reg [7:0] p2curr,
    output reg [7:0] p2acc,
    output reg [2:0] currdice
  );
  
  
  
  wire [1-1:0] M_det_p1roll_out;
  reg [1-1:0] M_det_p1roll_in;
  edge_detector_4 det_p1roll (
    .clk(clk),
    .in(M_det_p1roll_in),
    .out(M_det_p1roll_out)
  );
  
  wire [1-1:0] M_det_p1hold_out;
  reg [1-1:0] M_det_p1hold_in;
  edge_detector_4 det_p1hold (
    .clk(clk),
    .in(M_det_p1hold_in),
    .out(M_det_p1hold_out)
  );
  
  wire [1-1:0] M_det_p2roll_out;
  reg [1-1:0] M_det_p2roll_in;
  edge_detector_4 det_p2roll (
    .clk(clk),
    .in(M_det_p2roll_in),
    .out(M_det_p2roll_out)
  );
  
  wire [1-1:0] M_det_p2hold_out;
  reg [1-1:0] M_det_p2hold_in;
  edge_detector_4 det_p2hold (
    .clk(clk),
    .in(M_det_p2hold_in),
    .out(M_det_p2hold_out)
  );
  
  wire [1-1:0] M_p1roll_out;
  button_conditioner_5 p1roll (
    .clk(clk),
    .in(p1rollbtn),
    .out(M_p1roll_out)
  );
  
  wire [1-1:0] M_p1hold_out;
  button_conditioner_5 p1hold (
    .clk(clk),
    .in(p1holdbtn),
    .out(M_p1hold_out)
  );
  
  wire [1-1:0] M_p2roll_out;
  button_conditioner_5 p2roll (
    .clk(clk),
    .in(p2rollbtn),
    .out(M_p2roll_out)
  );
  
  wire [1-1:0] M_p2hold_out;
  button_conditioner_5 p2hold (
    .clk(clk),
    .in(p2holdbtn),
    .out(M_p2hold_out)
  );
  
  reg [7:0] M_st_p1curr_d, M_st_p1curr_q = 1'h0;
  
  reg [7:0] M_st_p1acc_d, M_st_p1acc_q = 1'h0;
  
  reg [7:0] M_st_p2curr_d, M_st_p2curr_q = 1'h0;
  
  reg [7:0] M_st_p2acc_d, M_st_p2acc_q = 1'h0;
  
  reg [2:0] M_st_currdice_d, M_st_currdice_q = 1'h0;
  
  reg [0:0] M_st_turn_d, M_st_turn_q = 1'h0;
  
  reg [0:0] M_st_win_d, M_st_win_q = 1'h0;
  
  reg [15:0] M_temp_d, M_temp_q = 1'h0;
  
  localparam ZERO = 1'h0;
  
  localparam WIN = 6'h32;
  
  wire [16-1:0] M_alu_out;
  wire [1-1:0] M_alu_z;
  wire [1-1:0] M_alu_v;
  wire [1-1:0] M_alu_n;
  reg [16-1:0] M_alu_a;
  reg [16-1:0] M_alu_b;
  reg [6-1:0] M_alu_alufn;
  alu_16_6 alu (
    .a(M_alu_a),
    .b(M_alu_b),
    .alufn(M_alu_alufn),
    .out(M_alu_out),
    .z(M_alu_z),
    .v(M_alu_v),
    .n(M_alu_n)
  );
  
  wire [3-1:0] M_diceroll_out;
  reg [1-1:0] M_diceroll_rollbtn;
  dice_7 diceroll (
    .clk(clk),
    .rst(rst),
    .rollbtn(M_diceroll_rollbtn),
    .out(M_diceroll_out)
  );
  
  
  localparam IDLE_game = 4'd0;
  localparam P1_TURN_game = 4'd1;
  localparam P1_ROLL_game = 4'd2;
  localparam UPDATEP1CURR_game = 4'd3;
  localparam RESET_P1CURR_game = 4'd4;
  localparam UPDATEP1ACC_game = 4'd5;
  localparam CHKP150_game = 4'd6;
  localparam P1WIN_game = 4'd7;
  localparam P2_TURN_game = 4'd8;
  localparam P2_ROLL_game = 4'd9;
  localparam UPDATEP2CURR_game = 4'd10;
  localparam RESET_P2CURR_game = 4'd11;
  localparam UPDATEP2ACC_game = 4'd12;
  localparam CHKP250_game = 4'd13;
  localparam P2WIN_game = 4'd14;
  
  reg [3:0] M_game_d, M_game_q = IDLE_game;
  
  always @* begin
    M_game_d = M_game_q;
    M_temp_d = M_temp_q;
    M_st_win_d = M_st_win_q;
    M_st_currdice_d = M_st_currdice_q;
    M_st_turn_d = M_st_turn_q;
    M_st_p2curr_d = M_st_p2curr_q;
    M_st_p1curr_d = M_st_p1curr_q;
    M_st_p2acc_d = M_st_p2acc_q;
    M_st_p1acc_d = M_st_p1acc_q;
    
    M_alu_a = 1'h0;
    M_alu_b = 1'h0;
    M_alu_alufn = 6'h3f;
    M_temp_d = M_alu_out;
    playerturn = 1'h0;
    p1curr = 1'h0;
    p1acc = 1'h0;
    p2curr = 1'h0;
    p2acc = 1'h0;
    currdice = 1'h0;
    M_det_p1roll_in = M_p1roll_out;
    M_det_p1hold_in = M_p1hold_out;
    M_det_p2roll_in = M_p2roll_out;
    M_det_p2hold_in = M_p2hold_out;
    M_diceroll_rollbtn = 1'h0;
    
    case (M_game_q)
      IDLE_game: begin
        if (M_det_p1roll_out || M_det_p1hold_out || M_det_p2roll_out || M_det_p2hold_out) begin
          M_game_d = P1_TURN_game;
        end else begin
          M_game_d = IDLE_game;
        end
      end
      P1_TURN_game: begin
        M_st_turn_d = 1'h0;
        playerturn = M_st_turn_q;
        p1curr = M_st_p1curr_q;
        p1acc = M_st_p1acc_q;
        currdice = M_st_currdice_q;
        if (M_det_p1roll_out) begin
          M_diceroll_rollbtn = M_det_p1roll_out;
          M_st_currdice_d = M_diceroll_out;
          currdice = M_st_currdice_q;
          M_game_d = P1_ROLL_game;
        end else begin
          if (M_det_p1hold_out) begin
            M_game_d = UPDATEP1ACC_game;
          end else begin
            M_game_d = P1_TURN_game;
          end
        end
      end
      P2_TURN_game: begin
        M_st_turn_d = 1'h1;
        playerturn = M_st_turn_q;
        p2curr = M_st_p2curr_q;
        p2acc = M_st_p2acc_q;
        currdice = M_st_currdice_q;
        if (M_det_p2roll_out) begin
          M_diceroll_rollbtn = M_det_p2roll_out;
          M_st_currdice_d = M_diceroll_out;
          currdice = M_st_currdice_q;
          M_game_d = P2_ROLL_game;
        end else begin
          if (M_det_p2hold_out) begin
            M_game_d = UPDATEP2ACC_game;
          end else begin
            M_game_d = P2_TURN_game;
          end
        end
      end
      P1_ROLL_game: begin
        playerturn = M_st_turn_q;
        p1curr = M_st_p1curr_q;
        p1acc = M_st_p1acc_q;
        currdice = M_st_currdice_q;
        if (M_st_currdice_q == 1'h1) begin
          M_game_d = RESET_P1CURR_game;
        end else begin
          if (M_st_currdice_q == 1'h0) begin
            M_game_d = IDLE_game;
          end else begin
            if (M_st_currdice_q == 2'h2 || M_st_currdice_q == 2'h3 || M_st_currdice_q == 3'h4 || M_st_currdice_q == 3'h5 || M_st_currdice_q == 3'h6) begin
              M_game_d = UPDATEP1CURR_game;
            end else begin
              M_game_d = P1_ROLL_game;
            end
          end
        end
      end
      P2_ROLL_game: begin
        playerturn = M_st_turn_q;
        p2curr = M_st_p2curr_q;
        p2acc = M_st_p2acc_q;
        currdice = M_st_currdice_q;
        if (M_st_currdice_q == 1'h1) begin
          M_game_d = RESET_P2CURR_game;
        end else begin
          if (M_st_currdice_q == 1'h0) begin
            M_game_d = IDLE_game;
          end else begin
            if (M_st_currdice_q == 2'h2 || M_st_currdice_q == 2'h3 || M_st_currdice_q == 3'h4 || M_st_currdice_q == 3'h5 || M_st_currdice_q == 3'h6) begin
              M_game_d = UPDATEP2CURR_game;
            end else begin
              M_game_d = P1_ROLL_game;
            end
          end
        end
      end
      UPDATEP1CURR_game: begin
        playerturn = M_st_turn_q;
        p1curr = M_st_p1curr_q;
        p1acc = M_st_p1acc_q;
        currdice = M_st_currdice_q;
        M_alu_a = M_st_p1curr_q;
        M_alu_b = M_st_currdice_q;
        M_alu_alufn = 6'h00;
        M_st_p1curr_d = M_alu_out;
        M_game_d = P1_TURN_game;
      end
      UPDATEP2CURR_game: begin
        playerturn = M_st_turn_q;
        p2curr = M_st_p2curr_q;
        p2acc = M_st_p2acc_q;
        currdice = M_st_currdice_q;
        M_alu_a = M_st_p2curr_q;
        M_alu_b = M_st_currdice_q;
        M_alu_alufn = 6'h00;
        M_st_p2curr_d = M_alu_out;
        M_game_d = P2_TURN_game;
      end
      RESET_P1CURR_game: begin
        playerturn = M_st_turn_q;
        p1curr = M_st_p1curr_q;
        p1acc = M_st_p1acc_q;
        currdice = M_st_currdice_q;
        M_alu_a = M_st_p1curr_q;
        M_alu_b = 1'h0;
        M_alu_alufn = 6'h08;
        M_st_p1curr_d = M_alu_out;
        M_game_d = P2_TURN_game;
      end
      RESET_P2CURR_game: begin
        playerturn = M_st_turn_q;
        p2curr = M_st_p2curr_q;
        p2acc = M_st_p2acc_q;
        currdice = M_st_currdice_q;
        M_alu_a = M_st_p1curr_q;
        M_alu_b = 1'h0;
        M_alu_alufn = 6'h08;
        M_st_p1curr_d = M_alu_out;
        M_game_d = P1_TURN_game;
      end
      UPDATEP1ACC_game: begin
        playerturn = M_st_turn_q;
        p1curr = M_st_p1curr_q;
        p1acc = M_st_p1acc_q;
        currdice = M_st_currdice_q;
        M_alu_a = M_st_p1acc_q;
        M_alu_b = M_st_p1curr_q;
        M_alu_alufn = 6'h00;
        M_st_p1acc_d = M_alu_out;
        M_game_d = CHKP150_game;
      end
      UPDATEP2ACC_game: begin
        playerturn = M_st_turn_q;
        p2curr = M_st_p2curr_q;
        p2acc = M_st_p2acc_q;
        currdice = M_st_currdice_q;
        M_alu_a = M_st_p2acc_q;
        M_alu_b = M_st_p2curr_q;
        M_alu_alufn = 6'h00;
        M_st_p2acc_d = M_alu_out;
        M_game_d = CHKP250_game;
      end
      CHKP150_game: begin
        playerturn = M_st_turn_q;
        p1curr = M_st_p1curr_q;
        p1acc = M_st_p1acc_q;
        currdice = M_st_currdice_q;
        M_alu_a = 6'h32;
        M_alu_b = M_st_p1acc_q;
        M_alu_alufn = 6'h37;
        M_st_win_d = M_alu_out;
        if (M_st_win_q == 1'h1) begin
          M_game_d = P1WIN_game;
        end else begin
          M_game_d = P2_TURN_game;
        end
      end
      CHKP250_game: begin
        playerturn = M_st_turn_q;
        p2curr = M_st_p2curr_q;
        p2acc = M_st_p2acc_q;
        currdice = M_st_currdice_q;
        M_alu_a = 6'h32;
        M_alu_b = M_st_p2acc_q;
        M_alu_alufn = 6'h37;
        M_st_win_d = M_alu_out;
        if (M_st_win_q == 1'h1) begin
          M_game_d = P2WIN_game;
        end else begin
          M_game_d = P1_TURN_game;
        end
      end
      P1WIN_game: begin
        playerturn = M_st_turn_q;
        p1curr = M_st_p1curr_q;
        p1acc = M_st_p1acc_q;
        currdice = M_st_currdice_q;
        M_st_turn_d = 1'h0;
        M_game_d = P1WIN_game;
      end
      P2WIN_game: begin
        playerturn = M_st_turn_q;
        p2curr = M_st_p2curr_q;
        p2acc = M_st_p2acc_q;
        currdice = M_st_currdice_q;
        M_st_turn_d = 1'h1;
        M_game_d = P2WIN_game;
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_st_p2curr_q <= 1'h0;
    end else begin
      M_st_p2curr_q <= M_st_p2curr_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_st_win_q <= 1'h0;
    end else begin
      M_st_win_q <= M_st_win_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_temp_q <= 1'h0;
    end else begin
      M_temp_q <= M_temp_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_st_p1acc_q <= 1'h0;
    end else begin
      M_st_p1acc_q <= M_st_p1acc_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_st_p1curr_q <= 1'h0;
    end else begin
      M_st_p1curr_q <= M_st_p1curr_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_st_p2acc_q <= 1'h0;
    end else begin
      M_st_p2acc_q <= M_st_p2acc_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_st_turn_q <= 1'h0;
    end else begin
      M_st_turn_q <= M_st_turn_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_st_currdice_q <= 1'h0;
    end else begin
      M_st_currdice_q <= M_st_currdice_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_game_q <= 1'h0;
    end else begin
      M_game_q <= M_game_d;
    end
  end
  
endmodule
