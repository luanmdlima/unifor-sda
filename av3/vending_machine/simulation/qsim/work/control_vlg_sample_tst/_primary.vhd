library verilog;
use verilog.vl_types.all;
entity control_vlg_sample_tst is
    port(
        c               : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        tot_lt_s        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end control_vlg_sample_tst;
