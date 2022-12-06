library verilog;
use verilog.vl_types.all;
entity system_vlg_check_tst is
    port(
        counter         : in     vl_logic_vector(4 downto 0);
        green           : in     vl_logic_vector(2 downto 0);
        red             : in     vl_logic_vector(2 downto 0);
        rst_counter     : in     vl_logic;
        yellow          : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end system_vlg_check_tst;
