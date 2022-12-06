library verilog;
use verilog.vl_types.all;
entity control_vlg_check_tst is
    port(
        d               : in     vl_logic;
        tot_clr         : in     vl_logic;
        tot_ld          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end control_vlg_check_tst;
