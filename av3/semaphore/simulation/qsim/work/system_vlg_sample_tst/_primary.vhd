library verilog;
use verilog.vl_types.all;
entity system_vlg_sample_tst is
    port(
        clk_1s          : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end system_vlg_sample_tst;
