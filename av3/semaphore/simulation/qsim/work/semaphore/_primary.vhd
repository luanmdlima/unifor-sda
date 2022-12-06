library verilog;
use verilog.vl_types.all;
entity semaphore is
    port(
        rst_counter     : out    vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        green           : out    vl_logic_vector(2 downto 0);
        red             : out    vl_logic_vector(2 downto 0);
        yellow          : out    vl_logic_vector(2 downto 0)
    );
end semaphore;
