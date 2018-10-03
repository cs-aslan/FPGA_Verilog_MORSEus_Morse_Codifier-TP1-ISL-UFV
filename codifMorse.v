module codifMorse (num, morse, reset, ready);

    // A = num[3]
    // B = num[2]
    // C = num[1]
    // D = num [0]

    input reset;
    input ready;
    input wire[3:0] num;
    output reg[4:0] morse;

    always @ (reset) begin
        morse = 0;
    end
    always @ (ready) begin
        if (~reset) begin
          morse[0] = (~num[2] & num[1]) | (num[2] & ~num[1]) | (~num[3] & ~num[2] & num[0]);
          morse[1] = (~num[2] & num[1]) | (num[1] & ~num[0]) | (num[2] & ~num[1]);
          morse[2] = num[2] | (num[1] & num[0]);
          morse[3] = num[2] | (num[3] & ~num[0]);
          morse[4] = num[3] | (num[2] & num[0]) | (num[2] & num[1]);

        end
    end
endmodule // divisivel

module demuxSegmento (controle, ponto, traco);

    input wire controle;
    output wire ponto, traco;

    assign ponto = controle;
    assign traco = ~controle; 

endmodule
