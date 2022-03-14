/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module boolean_16_7 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    input [0:0] sim_error,
    output reg [15:0] out
  );
  
  
  
  always @* begin
    
    case (alufn[0+3-:4])
      4'h8: begin
        if (sim_error == 1'h0) begin
          out = a & b;
        end else begin
          out = ~(a & b);
        end
      end
      4'he: begin
        if (sim_error == 1'h0) begin
          out = a | b;
        end else begin
          out = ~(a | b);
        end
      end
      4'h6: begin
        if (sim_error == 1'h0) begin
          out = a ^ b;
        end else begin
          out = ~(a ^ b);
        end
      end
      4'ha: begin
        if (sim_error == 1'h0) begin
          out = a;
        end else begin
          out = ~a;
        end
      end
      4'h9: begin
        if (sim_error == 1'h0) begin
          out = b;
        end else begin
          out = ~b;
        end
      end
      4'h7: begin
        if (sim_error == 1'h0) begin
          out = ~a | ~b;
        end else begin
          out = ~(~a | ~b);
        end
      end
      4'h1: begin
        if (sim_error == 1'h0) begin
          out = ~a & ~b;
        end else begin
          out = ~(~a & ~b);
        end
      end
      default: begin
        out = 16'h0000;
      end
    endcase
  end
endmodule
