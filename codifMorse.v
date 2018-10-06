module codifMorse (num, morse, display, reset, ready);

                                                                                                                                                                                                                                                            // A = num[5]
                                                                                                                                                                                                                                                            // B = num[4]
                                                                                                                                                                                                                                                            // C = num[3]
                                                                                                                                                                                                                                                            // D = num [2]
                                                                                                                                                                                                                                                            // E = num[1]
                                                                                                                                                                                                                                                            // F = num[0]

    input reset;
    input ready;
    input wire[5:0] num;
    output reg[4:0] morse;
    output reg[4:0] display;

    always @ (reset) begin
        morse = 0;
    end
    always @ (ready) begin
        if (~reset) begin

          morse[4] <= (num[3] & num[2] & num[1]) | (num[4] & ~num[2] & num[0]) | (num[5] & ~num[1] & ~num[0]) |
                      (~num[5] & ~num[3] & ~num[1] & num[0]) | (~num[5] & ~num[3] & ~num[2] & num[1]) | (~num[4] & ~num[3] & num[2] & ~num[1]) |
                      (~num[4] & num[3] & num[1] & ~num[0]) | (num[4] & num[3] & num[2] & ~num[0]);

          morse[3] <= (num[3] & num[2]) | (~num[4] & num[2] & ~num[1]) | (~num[4] & num[2] & ~num[0]) | (num[5] & ~num[1] & num[0]) | (num[2] & ~num[1] & ~num[0]) |
                      (~num[3] & ~num[2] & num[1] & ~num[0]) | (num[4] & num[2] & num[1] & num[0]) | (~num[5] & ~num[4] & ~num[2] & num[1] & num[0]) |
                      (num[4] & ~num[3] & ~num[2] & ~num[1] & num[0]);

          morse[2] <= (num[5] & num[0]) | (~num[4] & ~num[3] & num[2]) | (num[2] & ~num[1] & num[0]) | (num[3] & ~num[2] & num[1]) | (num[4] & num[2] & num[0]) |
                      (~num[4] & ~num[3] & num[1] & num[0]) | (num[4] & ~num[3] & ~num[2] & ~num[1]) | (num[4] & num[3] & num[2] & ~num[1]);

          morse[1] <= (~num[4] & num[2]) | (num[4] & ~num[1]) | (~num[4] & num[3] & ~num[0]) | (~num[4] & num[3] & num[1]) | (num[5] & num[1] & num[0]);

          morse[0] <= (num[3]) | (num[2] & num[0]) | (num[2] & num[1]);


          display[4] <= 1;

          display[3] <= (~num[3]) | (~num[2]) | (~num[4] & ~num[1]) | (num[1] & num[0]) | (num[4] & ~num[0]);

          display[2] <= (~num[1] & ~num[0]) | (~num[4] & ~num[3]) | (~num[3] & ~num[1]) | (~num[2] & num[0]) | (~num[4] & num[0]) | (num[4] & num[3] & num[1]);

          display[1] <= (num[5] & num[1]) | (~num[5] & ~num[4] & ~num[3]) | (~num[4] & ~num[2] & num[0]) | (~num[3] & ~num[2] & num[0]) | (~num[3] & ~num[1] & num[0]) |
                        (~num[2] & ~num[1] & num[0]) | (~num[5] & ~num[4] & ~num[1] & ~num[0]) | (num[3] & num[2] & num[1] & num[0]) | (num[4] & num[3] & ~num[2] & num[1] & ~num[0]);

          display[0] <= (~num[5] & ~num[4] & ~num[3]) | (~num[5] & ~num[4] & ~num[2] & ~num[1]);

        end
    end
endmodule // divisivel

module demuxDisplay (num, display, ponto, traco, ready);

    input wire[4:0] num;
    input wire[4:0] display;
    input wire ready;

    output wire[4:0] ponto;
    output wire[4:0] traco;

    assign  traco[4] = (display[4] & ~num[4]);
    assign  ponto[4] = (display[4] & num[4]);

    assign  traco[3] = (display[3] & ~num[3]);
    assign  ponto[3] = (display[3] & num[3]);

    assign  traco[2] = (display[2] & ~num[2]);
    assign  ponto[2] = (display[2] & num[2]);

    assign  traco[1] = (display[1] & ~num[1]);
    assign  ponto[1] = (display[1] & num[1]);

    assign  traco[0] = (display[0] & ~num[0]);
    assign  ponto[0] = (display[0] & num[0]);


endmodule
