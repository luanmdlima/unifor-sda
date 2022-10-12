library verilog;
use verilog.vl_types.all;
entity binary_up_down_counter is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enable          : in     vl_logic;
        updown          : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0)
    );
end binary_up_down_counter;
