module ALU_without_mul(
    input  io_sel_20,
    input  io_sel_19,
    input  io_sel_18,
    input  io_sel_17,
    input  io_sel_16,
    input  io_sel_15,
    input  io_sel_14,
    input  io_sel_13,
    input  io_sel_12,
    input  io_sel_11,
    input  io_sel_10,
    input  io_sel_9,
    input  io_sel_8,
    input  io_sel_7,
    input  io_sel_6,
    input  io_sel_5,
    input  io_sel_4,
    input  io_sel_3,
    input  io_sel_2,
    input  io_sel_1,
    input  io_sel_0,
    input [63:0] io_alu1,
    input [63:0] io_alu2,
    output[63:0] io_out
);

  wire[63:0] T0;
  wire[63:0] T1;
  wire[63:0] T2;
  wire[63:0] T3;
  wire[63:0] T4;
  wire[63:0] xor_;
  wire[63:0] nand_;
  wire[63:0] or_;
  wire[63:0] and_;
  wire[63:0] sub;
  wire T5;
  wire T6;
  wire T7;
  wire[63:0] add;
  wire T8;
  wire T9;
  wire T10;


  assign io_out = T0;
  assign T0 = T8 ? add : T1;
  assign T1 = T5 ? sub : T2;
  assign T2 = io_sel_6 ? and_ : T3;
  assign T3 = io_sel_7 ? or_ : T4;
  assign T4 = io_sel_8 ? nand_ : xor_;
  assign xor_ = io_alu1 ^ io_alu2;
  assign nand_ = ~ and_;
  assign or_ = io_alu1 | io_alu2;
  assign and_ = io_alu1 & io_alu2;
  assign sub = io_alu1 - io_alu2;
  assign T5 = T6 | io_sel_18;
  assign T6 = T7 | io_sel_17;
  assign T7 = io_sel_1 | io_sel_11;
  assign add = io_alu1 + io_alu2;
  assign T8 = T9 | io_sel_4;
  assign T9 = T10 | io_sel_5;
  assign T10 = io_sel_0 | io_sel_10;
endmodule

