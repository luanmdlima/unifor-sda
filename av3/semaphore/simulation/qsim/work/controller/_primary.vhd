library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        counter         : in     vl_logic_vector(4 downto 0);
        red             : out    vl_logic_vector(2 downto 0);
        yellow          : out    vl_logic_vector(2 downto 0);
        green           : out    vl_logic_vector(2 downto 0);
        reset_counter   : out    vl_logic
    );
end controller;
