library verilog;
use verilog.vl_types.all;
entity counter_bcd_down is
    port(
        in_1            : in     vl_logic;
        q               : out    vl_logic_vector(3 downto 0)
    );
end counter_bcd_down;
