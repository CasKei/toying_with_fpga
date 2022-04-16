/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module compare_16_14 (
    input z,
    input v,
    input n,
    input [5:0] alufn,
    output reg [15:0] out
  );
  
  
  
  always @* begin
    out = 16'h0000;
    
    case (alufn[0+2-:3])
      default: begin
        out[0+0-:1] = 1'h0;
      end
      3'h3: begin
        out[0+0-:1] = z;
      end
      3'h5: begin
        out[0+0-:1] = n ^ v;
      end
      3'h7: begin
        out[0+0-:1] = z | (n ^ v);
      end
    endcase
  end
endmodule
