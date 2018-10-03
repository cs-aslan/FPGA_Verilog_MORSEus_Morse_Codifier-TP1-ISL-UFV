`include "codifMorse.v"

module testbench ();
    reg[3:0] num;
    reg rst, rdy;
    wire[4:0] morse;

    codifMorse codificador (.num(num), .reset(rst), .ready(rdy), .morse(morse));

    initial begin
      $dumpfile("codifMorse.vcd");
      $dumpvars(0, testbench);
      $display("Equivalente em morse (0 = Traço, 1 = Ponto)? ");
      $monitor("%d = %b %b %b %b %b", num, morse[0], morse[1], morse[2], morse[3], morse[4]);

          rst = 1;
      #1; rst = 0;
      #1; rdy = 0; num = 1; rdy = 1;
      #1; rdy = 0; num = 2; rdy = 1;
      #1; rdy = 0; num = 3; rdy = 1;
      #1; rdy = 0; num = 4; rdy = 1;
      #1; rdy = 0; num = 5; rdy = 1;
      #1; rdy = 0; num = 6; rdy = 1;
      #1; rdy = 0; num = 7; rdy = 1;
      #1; rdy = 0; num = 8; rdy = 1;
      #1; rdy = 0; num = 9; rdy = 1;
      #1; rdy = 0; num = 0; rdy = 1;
      #1;

      $finish;

    end
endmodule // testbench
