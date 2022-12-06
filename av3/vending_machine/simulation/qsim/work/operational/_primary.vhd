library verilog;
use verilog.vl_types.all;
entity operational is
    port(
        tot_lt_s        : out    vl_logic;
        s               : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        tot_ld          : in     vl_logic;
        tot_clr         : in     vl_logic;
        a               : in     vl_logic_vector(7 downto 0)
    );
end operational;
