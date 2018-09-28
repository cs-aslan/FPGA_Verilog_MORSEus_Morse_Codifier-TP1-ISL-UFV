`include "divisivel.v"
//`timescale time / time

module testbench ();
    reg a, b, c, rst, rdy;
    wire out;

    divisivel moduloDivisivel1 (.a(a), .b(b), .c(c), .reset(rst), .ready(rdy), .out(out));

    initial begin
      $dumpfile("divisivel.vcd");
      $dumpvars(0, testbench);
      $display("Numero é divsivel por 2? ");
      $monitor("%b%b%b = %b", a, b, c, out);

          rst = 1;
      #1; rst = 0;
      #1; rdy = 0; a = 0; b = 0; c = 0; rdy = 1;
      #1; rdy = 0; a = 0; b = 0; c = 1; rdy = 1;
      #1; rdy = 0; a = 0; b = 1; c = 0; rdy = 1;
      #1; rdy = 0; a = 0; b = 1; c = 1; rdy = 1;
      #1; rdy = 0; a = 1; b = 0; c = 0; rdy = 1;
      #1; rdy = 0; a = 1; b = 0; c = 1; rdy = 1;
      #1; rdy = 0; a = 1; b = 1; c = 0; rdy = 1;
      #1; rdy = 0; a = 1; b = 1; c = 1; rdy = 1;
      #1;

      $finish;

    end
endmodule // testbench
