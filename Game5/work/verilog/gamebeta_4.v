/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module gamebeta_4 (
    input clk,
    input rst,
    input p1rollbutn,
    input p1holdbutn,
    input p2rollbutn,
    input p2holdbutn,
    output reg [0:0] playerturn,
    output reg [1:0] playerwin,
    output reg [7:0] p1curr,
    output reg [7:0] p1acc,
    output reg [7:0] p2curr,
    output reg [7:0] p2acc,
    output reg [2:0] currdice
  );
  
  
  
  reg [15:0] alu_in_a;
  
  reg [15:0] alu_in_b;
  
  wire [1-1:0] M_det_diceroll_out;
  reg [1-1:0] M_det_diceroll_in;
  edge_detector_2 det_diceroll (
    .clk(clk),
    .in(M_det_diceroll_in),
    .out(M_det_diceroll_out)
  );
  
  wire [3-1:0] M_diceroll_out;
  dice_8 diceroll (
    .clk(clk),
    .rst(rst),
    .out(M_diceroll_out)
  );
  
  wire [16-1:0] M_gamealu_out;
  wire [1-1:0] M_gamealu_z;
  wire [1-1:0] M_gamealu_v;
  wire [1-1:0] M_gamealu_n;
  reg [16-1:0] M_gamealu_a;
  reg [16-1:0] M_gamealu_b;
  reg [6-1:0] M_gamealu_alufn;
  alu_16_9 gamealu (
    .a(M_gamealu_a),
    .b(M_gamealu_b),
    .alufn(M_gamealu_alufn),
    .out(M_gamealu_out),
    .z(M_gamealu_z),
    .v(M_gamealu_v),
    .n(M_gamealu_n)
  );
  
  wire [6-1:0] M_cu_alufn;
  wire [2-1:0] M_cu_asel;
  wire [2-1:0] M_cu_bsel;
  wire [2-1:0] M_cu_alu_sel;
  wire [4-1:0] M_cu_write_a;
  wire [4-1:0] M_cu_read_a;
  wire [4-1:0] M_cu_read_b;
  wire [1-1:0] M_cu_we;
  reg [1-1:0] M_cu_p1rollbtn;
  reg [1-1:0] M_cu_p1holdbtn;
  reg [1-1:0] M_cu_p2rollbtn;
  reg [1-1:0] M_cu_p2holdbtn;
  reg [1-1:0] M_cu_haswinner;
  reg [3-1:0] M_cu_diceres;
  game_CU_10 cu (
    .clk(clk),
    .rst(rst),
    .p1rollbtn(M_cu_p1rollbtn),
    .p1holdbtn(M_cu_p1holdbtn),
    .p2rollbtn(M_cu_p2rollbtn),
    .p2holdbtn(M_cu_p2holdbtn),
    .haswinner(M_cu_haswinner),
    .diceres(M_cu_diceres),
    .alufn(M_cu_alufn),
    .asel(M_cu_asel),
    .bsel(M_cu_bsel),
    .alu_sel(M_cu_alu_sel),
    .write_a(M_cu_write_a),
    .read_a(M_cu_read_a),
    .read_b(M_cu_read_b),
    .we(M_cu_we)
  );
  wire [16-1:0] M_regs_data_a;
  wire [16-1:0] M_regs_data_b;
  wire [1-1:0] M_regs_pturn;
  wire [2-1:0] M_regs_pwin;
  wire [8-1:0] M_regs_p1current;
  wire [8-1:0] M_regs_p1accu;
  wire [8-1:0] M_regs_p2current;
  wire [8-1:0] M_regs_p2accu;
  wire [3-1:0] M_regs_currentdice;
  reg [4-1:0] M_regs_wa;
  reg [1-1:0] M_regs_we;
  reg [16-1:0] M_regs_data;
  reg [4-1:0] M_regs_read_a;
  reg [4-1:0] M_regs_read_b;
  reg [3-1:0] M_regs_diceresult;
  regfile_11 regs (
    .clk(clk),
    .rst(rst),
    .wa(M_regs_wa),
    .we(M_regs_we),
    .data(M_regs_data),
    .read_a(M_regs_read_a),
    .read_b(M_regs_read_b),
    .diceresult(M_regs_diceresult),
    .data_a(M_regs_data_a),
    .data_b(M_regs_data_b),
    .pturn(M_regs_pturn),
    .pwin(M_regs_pwin),
    .p1current(M_regs_p1current),
    .p1accu(M_regs_p1accu),
    .p2current(M_regs_p2current),
    .p2accu(M_regs_p2accu),
    .currentdice(M_regs_currentdice)
  );
  
  always @* begin
    M_cu_p1rollbtn = p1rollbutn;
    M_cu_p1holdbtn = p1holdbutn;
    M_cu_p2rollbtn = p2rollbutn;
    M_cu_p2holdbtn = p2holdbutn;
    M_det_diceroll_in = M_diceroll_out;
    M_cu_haswinner = M_regs_pwin;
    M_cu_diceres = M_diceroll_out;
    M_regs_diceresult = M_diceroll_out;
    M_regs_read_a = M_cu_read_a;
    M_regs_read_b = M_cu_read_b;
    M_regs_we = M_cu_we;
    M_regs_wa = M_cu_write_a;
    
    case (M_cu_asel)
      2'h0: begin
        alu_in_a = M_regs_data_a;
      end
      2'h1: begin
        alu_in_a = M_diceroll_out;
      end
      2'h2: begin
        alu_in_a = 6'h32;
      end
      default: begin
        alu_in_a = 1'h1;
      end
    endcase
    
    case (M_cu_bsel)
      2'h0: begin
        alu_in_b = M_regs_data_b;
      end
      2'h1: begin
        alu_in_b = 1'h0;
      end
      2'h2: begin
        alu_in_b = 6'h32;
      end
      default: begin
        alu_in_b = 1'h1;
      end
    endcase
    M_gamealu_a = alu_in_a;
    M_gamealu_b = alu_in_b;
    M_gamealu_alufn = M_cu_alufn;
    
    case (M_cu_alu_sel)
      2'h1: begin
        M_regs_data = 1'h0;
      end
      2'h2: begin
        M_regs_data = 1'h1;
      end
      default: begin
        M_regs_data = M_gamealu_out;
      end
    endcase
    playerturn = M_regs_pturn;
    playerwin = M_regs_pwin;
    p1curr = M_regs_p1current;
    p1acc = M_regs_p1accu;
    p2curr = M_regs_p2current;
    p2acc = M_regs_p2accu;
    currdice = M_regs_currentdice;
  end
endmodule
