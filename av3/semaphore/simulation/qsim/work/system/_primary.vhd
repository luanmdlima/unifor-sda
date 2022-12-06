library verilog;
use verilog.vl_types.all;
entity system is
    port(
        rst_counter     : out    vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        clk_1s          : in     vl_logic;
        counter         : out    vl_logic_vector(4 downto 0);
        green           : out    vl_logic_vector(2 downto 0);
        red             : out    vl_logic_vector(2 downto 0);
        yellow          : out    vl_logic_vector(2 downto 0)
    );
end system;
