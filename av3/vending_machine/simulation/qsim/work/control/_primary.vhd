library verilog;
use verilog.vl_types.all;
entity control is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        c               : in     vl_logic;
        tot_lt_s        : in     vl_logic;
        d               : out    vl_logic;
        tot_ld          : out    vl_logic;
        tot_clr         : out    vl_logic
    );
end control;
