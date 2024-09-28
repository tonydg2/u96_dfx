
module led_cnt_top (
  input         rstn,
  input         clk100,
  output [1:0]  leds_o,
  output [31:0] version
);
///////////////////////////////////////////////////////////////////////////////////////////////////
  localparam  [31:0]  VERS = 32'hBBBB_0777;
  logic led1, led2;

  (* DONT_TOUCH = "yes" *) led_cnt_pr led_cnt_pr_inst (
    .rst    (~rstn  ),
    .clk100 (clk100 ),
    .led_o  (led1   ) 
  );

  (* DONT_TOUCH = "yes" *) led_cnt2_pr led_cnt2_pr_inst (
    .rst    (~rstn  ),
    .clk100 (clk100 ),
    .led_o  (led2   )
  );

  assign leds_o[0] = led1;
  assign leds_o[1] = led2;
  assign version = VERS;

endmodule


// blackbox definition
module led_cnt_pr (
  input   rst,
  input   clk100,
  output  led_o);
endmodule

// blackbox definition
module led_cnt2_pr (
  input   rst,
  input   clk100,
  output  led_o);
endmodule
