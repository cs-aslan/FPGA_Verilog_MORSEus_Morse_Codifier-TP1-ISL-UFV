`include "codifMorse.v"

module testbench ();
    reg[5:0] num;
    reg rst, rdy;
    wire[4:0] morse;
    wire[4:0] display;
    wire[4:0] ponto;
    wire[4:0] traco;

    codifMorse codificador (.num(num), .display(display), .reset(rst), .ready(rdy), .morse(morse));
    demuxDisplay demux4 (.num(morse), .display(display), .ponto(ponto), .traco(traco), .ready(rdy));

    initial begin
      $dumpfile("codifMorse.vcd");
      $dumpvars(0, testbench);
      $display("\nNúmero -- Equivalente em morse:\n");
      $monitor("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

      rst = 1; rst = 0;
      rdy = 0; num = 1; rdy = 1;
      $display("\n   [CARACTERE] = %d",num);
      #1; rdy = 0; num = 2; rdy = 1;
      $display("\n   [CARACTERE] = %d",num);
      #1; rdy = 0; num = 3; rdy = 1;
      $display("\n   [CARACTERE] = %d",num);
      #1; rdy = 0; num = 4; rdy = 1;
      $display("\n   [CARACTERE] = %d",num);
      #1; rdy = 0; num = 5; rdy = 1;
      $display("\n   [CARACTERE] = %d",num);
      #1; rdy = 0; num = 6; rdy = 1;
      $display("\n   [CARACTERE] = %d",num);
      #1; rdy = 0; num = 7; rdy = 1;
      $display("\n   [CARACTERE] = %d",num);
      #1; rdy = 0; num = 8; rdy = 1;
      $display("\n   [CARACTERE] = %d",num);
      #1; rdy = 0; num = 9; rdy = 1;
      $display("\n   [CARACTERE] = %d",num);
      #1; rdy = 0; num = 0; rdy = 1;
      $display("\n   [CARACTERE] = %d",num);
      #1; rdy = 0; num = 10; rdy = 1;
      $display("\n   [CARACTERE] = A");
      #1; rdy = 0; num = 11; rdy = 1;
      $display("\n   [CARACTERE] = B");
      #1; rdy = 0; num = 12; rdy = 1;
      $display("\n   [CARACTERE] = C");
      #1; rdy = 0; num = 13; rdy = 1;
      $display("\n   [CARACTERE] = D");
      #1; rdy = 0; num = 14; rdy = 1;
      $display("\n   [CARACTERE] = E");
      #1; rdy = 0; num = 15; rdy = 1;
      $display("\n   [CARACTERE] = F");
      #1; rdy = 0; num = 16; rdy = 1;
      $display("\n   [CARACTERE] = G");
      #1; rdy = 0; num = 17; rdy = 1;
      $display("\n   [CARACTERE] = H");
      #1; rdy = 0; num = 18; rdy = 1;
      $display("\n   [CARACTERE] = I");
      #1; rdy = 0; num = 19; rdy = 1;
      $display("\n   [CARACTERE] = J");
      #1; rdy = 0; num = 20; rdy = 1;
      $display("\n   [CARACTERE] = K");
      #1; rdy = 0; num = 21; rdy = 1;
      $display("\n   [CARACTERE] = L");
      #1; rdy = 0; num = 22; rdy = 1;
      $display("\n   [CARACTERE] = M");
      #1; rdy = 0; num = 23; rdy = 1;
      $display("\n   [CARACTERE] = N");
      #1; rdy = 0; num = 24; rdy = 1;
      $display("\n   [CARACTERE] = O");
      #1; rdy = 0; num = 25; rdy = 1;
      $display("\n   [CARACTERE] = P");
      #1; rdy = 0; num = 26; rdy = 1;
      $display("\n   [CARACTERE] = Q");
      #1; rdy = 0; num = 27; rdy = 1;
      $display("\n   [CARACTERE] = R");
      #1; rdy = 0; num = 28; rdy = 1;
      $display("\n   [CARACTERE] = S");
      #1; rdy = 0; num = 29; rdy = 1;
      $display("\n   [CARACTERE] = T");
      #1; rdy = 0; num = 30; rdy = 1;
      $display("\n   [CARACTERE] = U");
      #1; rdy = 0; num = 31; rdy = 1;
      $display("\n   [CARACTERE] = V");
      #1; rdy = 0; num = 32; rdy = 1;
      $display("\n   [CARACTERE] = W");
      #1; rdy = 0; num = 33; rdy = 1;
      $display("\n   [CARACTERE] = X");
      #1; rdy = 0; num = 34; rdy = 1;
      $display("\n   [CARACTERE] = Y");
      #1; rdy = 0; num = 35; rdy = 1;
      $display("\n   [CARACTERE] = Z");
      #1;

      $finish;

    end
endmodule // testbench
