module dmemory32(
    input clock,
    input Memwrite,
    input [31:0] address,
    input [31:0] write_data,
    output [31:0] read_data
);
    wire clk;
    assign clk = !clock;
    
    RAM ram (
    .clka(clk), 
    .wea(Memwrite), 
    .addra(address[15:2]), 
    .dina(write_data), 
    .douta(read_data) 
    );
endmodule
