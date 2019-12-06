`define rom_32K 1

module rom_32K(
    input  [14:0]  address,
    output [15:0] out
);
  
  reg[15:0] memory[0:2**15-1] /*verilator public*/;
  initial begin
      $readmemb("./Pattern.hack", memory);
  end

  always @* begin
    out <= memory[address];
  end
endmodule