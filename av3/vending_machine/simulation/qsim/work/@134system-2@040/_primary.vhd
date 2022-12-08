library verilog;
use verilog.vl_types.all;
entity \system-2\ is
    port(
        d               : out    vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        c               : in     vl_logic;
        a               : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic_vector(7 downto 0)
    );
end \system-2\;
