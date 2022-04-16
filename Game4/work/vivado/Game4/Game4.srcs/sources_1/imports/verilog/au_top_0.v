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
    input p1rollbutton,
    input p1holdbutton,
    input p2rollbutton,
    input p2holdbutton,
    input resetbutton,
    output reg [6:0] display_dice_seg,
    output reg [0:0] display_dice_sel,
    output reg [6:0] display_p1curr_seg,
    output reg [1:0] display_p1curr_sel,
    output reg [6:0] display_p1acc_seg,
    output reg [1:0] display_p1acc_sel,
    output reg [6:0] display_p2curr_seg,
    output reg [1:0] display_p2curr_sel,
    output reg [6:0] display_p2acc_seg,
    output reg [1:0] display_p2acc_sel,
    output reg display_p1turn_led,
    output reg display_p2turn_led
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  
  wire [1-1:0] M_game_playerturn;
  wire [2-1:0] M_game_playerwin;
  wire [8-1:0] M_game_p1curr;
  wire [8-1:0] M_game_p1acc;
  wire [8-1:0] M_game_p2curr;
  wire [8-1:0] M_game_p2acc;
  wire [3-1:0] M_game_currdice;
  reg [1-1:0] M_game_p1rollbtn;
  reg [1-1:0] M_game_p1holdbtn;
  reg [1-1:0] M_game_p2rollbtn;
  reg [1-1:0] M_game_p2holdbtn;
  game_CU_2 game (
    .clk(clk),
    .rst(resetbutton),
    .p1rollbtn(M_game_p1rollbtn),
    .p1holdbtn(M_game_p1holdbtn),
    .p2rollbtn(M_game_p2rollbtn),
    .p2holdbtn(M_game_p2holdbtn),
    .playerturn(M_game_playerturn),
    .playerwin(M_game_playerwin),
    .p1curr(M_game_p1curr),
    .p1acc(M_game_p1acc),
    .p2curr(M_game_p2curr),
    .p2acc(M_game_p2acc),
    .currdice(M_game_currdice)
  );
  
  wire [7-1:0] M_display_dice_segs;
  reg [3-1:0] M_display_dice_char;
  dice_seg_3 display_dice (
    .char(M_display_dice_char),
    .segs(M_display_dice_segs)
  );
  
  wire [7-1:0] M_display_p1curr_segs;
  wire [2-1:0] M_display_p1curr_digits;
  reg [8-1:0] M_display_p1curr_value;
  display_player_score_4 display_p1curr (
    .clk(clk),
    .rst(resetbutton),
    .value(M_display_p1curr_value),
    .segs(M_display_p1curr_segs),
    .digits(M_display_p1curr_digits)
  );
  
  wire [7-1:0] M_display_p1acc_segs;
  wire [2-1:0] M_display_p1acc_digits;
  reg [8-1:0] M_display_p1acc_value;
  display_player_score_4 display_p1acc (
    .clk(clk),
    .rst(resetbutton),
    .value(M_display_p1acc_value),
    .segs(M_display_p1acc_segs),
    .digits(M_display_p1acc_digits)
  );
  
  wire [7-1:0] M_display_p2curr_segs;
  wire [2-1:0] M_display_p2curr_digits;
  reg [8-1:0] M_display_p2curr_value;
  display_player_score_4 display_p2curr (
    .clk(clk),
    .rst(resetbutton),
    .value(M_display_p2curr_value),
    .segs(M_display_p2curr_segs),
    .digits(M_display_p2curr_digits)
  );
  
  wire [7-1:0] M_display_p2acc_segs;
  wire [2-1:0] M_display_p2acc_digits;
  reg [8-1:0] M_display_p2acc_value;
  display_player_score_4 display_p2acc (
    .clk(clk),
    .rst(resetbutton),
    .value(M_display_p2acc_value),
    .segs(M_display_p2acc_segs),
    .digits(M_display_p2acc_digits)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    usb_tx = usb_rx;
    led = 8'h00;
    M_display_dice_char = M_game_currdice;
    M_reset_cond_in = ~resetbutton;
    rst = M_reset_cond_out;
    M_game_p1rollbtn = p1rollbutton;
    M_game_p2rollbtn = p2rollbutton;
    M_game_p1holdbtn = p1holdbutton;
    M_game_p2holdbtn = p2holdbutton;
    display_p1turn_led = M_game_playerturn;
    display_p2turn_led = ~M_game_playerturn;
    display_dice_seg = M_display_dice_segs;
    display_dice_sel = 4'he;
    M_display_p1curr_value = M_game_p1curr;
    display_p1curr_seg = ~M_display_p1curr_segs;
    display_p1curr_sel = M_display_p1curr_digits;
    M_display_p2curr_value = M_game_p2curr;
    display_p2curr_seg = ~M_display_p2curr_segs;
    display_p2curr_sel = M_display_p2curr_digits;
    M_display_p1acc_value = M_game_p1acc;
    display_p1acc_seg = ~M_display_p1acc_segs;
    display_p1acc_sel = M_display_p1acc_digits;
    M_display_p2acc_value = M_game_p2acc;
    display_p2acc_seg = ~M_display_p2acc_segs;
    display_p2acc_sel = M_display_p2acc_digits;
  end
endmodule
