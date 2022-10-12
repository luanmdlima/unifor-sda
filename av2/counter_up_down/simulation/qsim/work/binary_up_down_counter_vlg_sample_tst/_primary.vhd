library verilog;
use verilog.vl_types.all;
entity binary_up_down_counter_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        reset           : in     vl_logic;
        updown          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end binary_up_down_counter_vlg_sample_tst;
