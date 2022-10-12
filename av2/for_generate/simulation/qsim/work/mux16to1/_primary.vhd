library verilog;
use verilog.vl_types.all;
entity mux16to1 is
    port(
        w               : in     vl_logic_vector(0 to 15);
        s               : in     vl_logic_vector(3 downto 0);
        f               : out    vl_logic
    );
end mux16to1;
