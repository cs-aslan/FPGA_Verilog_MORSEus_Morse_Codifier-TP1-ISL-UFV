module divisivel (a, b, c, reset, ready, out);

    input wire a, b, c, reset, ready;
    output reg out;

    always @ (reset) begin
        out = 1'b0;
    end
    always @ (ready) begin
        if (~reset) begin
          out = ~c;
        end
    end
endmodule // divisivel
