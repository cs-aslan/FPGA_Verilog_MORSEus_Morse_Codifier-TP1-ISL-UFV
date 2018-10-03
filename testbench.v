`include "codifMorse.v"

module testbench ();
    reg[3:0] num;
    reg rst, rdy;
    wire[4:0] morse;
    wire[4:0] displayPonto;
    wire[4:0] displayTraco;

    codifMorse codificador (.num(num), .reset(rst), .ready(rdy), .morse(morse));

    demuxSegmento demuxDisplay4 (.controle(morse[4]), .ponto(displayPonto[4]), .traco(displayTraco[4]));
    demuxSegmento demuxDisplay3 (.controle(morse[3]), .ponto(displayPonto[3]), .traco(displayTraco[3]));
    demuxSegmento demuxDisplay2 (.controle(morse[2]), .ponto(displayPonto[2]), .traco(displayTraco[2]));
    demuxSegmento demuxDisplay1 (.controle(morse[1]), .ponto(displayPonto[1]), .traco(displayTraco[1]));
    demuxSegmento demuxDisplay0 (.controle(morse[0]), .ponto(displayPonto[0]), .traco(displayTraco[0]));

    initial begin
      $dumpfile("codifMorse.vcd");
      $dumpvars(0, testbench);
      $display("Equivalente em morse (0 = Traço, 1 = Ponto)? ");
      $monitor("%d = %b %b %b %b %b", num, morse[4], morse[3], morse[2], morse[1], morse[0]);

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
