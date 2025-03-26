// Verilog wrapper

module led_cnt3_pr (
  input         rst,
  input         clk100,
  output        led_o,
  output [63:0] git_hash_o,
  output [31:0] timestamp_o
);
///////////////////////////////////////////////////////////////////////////////////////////////////

 led_cnt led_cnt_inst (
   .rst    (rst      ),
   .clk100 (clk100   ),
   .div_i  (5'h3     ),
   .wren_i (1'b0     ),
   .led_o  (led_o    )
 );

  user_init_64b led_git_hash_inst (
    .clk      (1'b0),
    .value_o  (git_hash_o)
  );

  user_init_32b led_timestamp_inst (
    .clk      (1'b0),
    .value_o  (timestamp_o)
  );

endmodule
