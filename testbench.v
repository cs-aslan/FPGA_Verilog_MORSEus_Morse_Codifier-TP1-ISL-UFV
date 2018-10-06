`include "codifMorse.v"

module testbench ();
    reg[5:0] num;
    reg rst, rdy;
    wire[4:0] morse;
    wire[4:0] display;
    wire[4:0] ponto;
    wire[4:0] traco;

    codifMorse codificador (.num(num), .display(display), .reset(rst), .ready(rdy), .morse(morse));
    demuxDisplay demux4 (.num(morse[4]), .display(display[4]), .ponto(ponto[4]), .traco(traco[4]));
    demuxDisplay demux3 (.num(morse[3]), .display(display[3]), .ponto(ponto[3]), .traco(traco[3]));
    demuxDisplay demux2 (.num(morse[2]), .display(display[2]), .ponto(ponto[2]), .traco(traco[2]));
    demuxDisplay demux1 (.num(morse[1]), .display(display[1]), .ponto(ponto[1]), .traco(traco[1]));
    demuxDisplay demux0 (.num(morse[0]), .display(display[0]), .ponto(ponto[0]), .traco(traco[0]));

    initial begin
      $dumpfile("codifMorse.vcd");
      $dumpvars(0, testbench);
      $display("\nNúmero -- Equivalente em morse:\n");

      rst = 1; rst = 0;

rdy = 0; num = 1; rdy = 1; #1;
      $display("\n   [CARACTERE] = %d",num);
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);
    
rdy = 0; num = 2; rdy = 1; #1;
      $display("\n   [CARACTERE] = %d",num);
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 3; rdy = 1; #1;
      $display("\n   [CARACTERE] = %d",num);
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 4; rdy = 1; #1;
      $display("\n   [CARACTERE] = %d",num);
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 5; rdy = 1; #1;
      $display("\n   [CARACTERE] = %d",num);
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 6; rdy = 1; #1;
      $display("\n   [CARACTERE] = %d",num);
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 7; rdy = 1; #1;
      $display("\n   [CARACTERE] = %d",num);
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 8; rdy = 1; #1;
      $display("\n   [CARACTERE] = %d",num);
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 9; rdy = 1; #1;
      $display("\n   [CARACTERE] = %d",num);

      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 0; rdy = 1; #1;
      $display("\n   [CARACTERE] = %d",num);
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 10; rdy = 1; #1;
      $display("\n   [CARACTERE] = A");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);
rdy = 0; num = 11; rdy = 1; #1;
      $display("\n   [CARACTERE] = B");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 12; rdy = 1; #1;
      $display("\n   [CARACTERE] = C");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 13; rdy = 1; #1;
      $display("\n   [CARACTERE] = D");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 14; rdy = 1; #1;
      $display("\n   [CARACTERE] = E");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 15; rdy = 1; #1;
      $display("\n   [CARACTERE] = F");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 16; rdy = 1; #1;
      $display("\n   [CARACTERE] = G");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 17; rdy = 1; #1;
      $display("\n   [CARACTERE] = H");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 18; rdy = 1; #1;
      $display("\n   [CARACTERE] = I");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 19; rdy = 1; #1;
      $display("\n   [CARACTERE] = J");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 20; rdy = 1; #1;
      $display("\n   [CARACTERE] = K");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 21; rdy = 1; #1;
      $display("\n   [CARACTERE] = L");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 22; rdy = 1; #1;
      $display("\n   [CARACTERE] = M");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 23; rdy = 1; #1;
      $display("\n   [CARACTERE] = N");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 24; rdy = 1; #1;
      $display("\n   [CARACTERE] = O");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 25; rdy = 1; #1;
      $display("\n   [CARACTERE] = P");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 26; rdy = 1; #1;
      $display("\n   [CARACTERE] = Q");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 27; rdy = 1; #1;
      $display("\n   [CARACTERE] = R");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 28; rdy = 1; #1;
      $display("\n   [CARACTERE] = S");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 29; rdy = 1; #1;
      $display("\n   [CARACTERE] = T");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 30; rdy = 1; #1;
      $display("\n   [CARACTERE] = U");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 31; rdy = 1; #1;
      $display("\n   [CARACTERE] = V");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 32; rdy = 1; #1;
      $display("\n   [CARACTERE] = W");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 33; rdy = 1; #1;
      $display("\n   [CARACTERE] = X");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 34; rdy = 1; #1;
      $display("\n   [CARACTERE] = Y");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);

rdy = 0; num = 35; rdy = 1; #1;
      $display("\n   [CARACTERE] = Z");
      $display("   [PONTO] = %b %b %b %b %b \n   [TRACO] = %b %b %b %b %b \n", ponto[4], ponto[3], ponto[2], ponto[1], ponto[0], traco[4], traco[3], traco[2], traco[1], traco[0]);
      $finish;

    end
endmodule // testbench
