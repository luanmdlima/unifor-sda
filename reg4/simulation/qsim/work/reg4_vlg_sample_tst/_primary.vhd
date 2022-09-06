library verilog;
use verilog.vl_types.all;
entity reg4_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        d0              : in     vl_logic;
        d1              : in     vl_logic;
        d2              : in     vl_logic;
        d3              : in     vl_logic;
        en              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end reg4_vlg_sample_tst;
