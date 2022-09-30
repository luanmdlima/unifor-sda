library verilog;
use verilog.vl_types.all;
entity reg4 is
    port(
        clk             : in     vl_logic;
        en              : in     vl_logic;
        d0              : in     vl_logic;
        d1              : in     vl_logic;
        d2              : in     vl_logic;
        d3              : in     vl_logic;
        q0              : out    vl_logic;
        q1              : out    vl_logic;
        q2              : out    vl_logic;
        q3              : out    vl_logic
    );
end reg4;
