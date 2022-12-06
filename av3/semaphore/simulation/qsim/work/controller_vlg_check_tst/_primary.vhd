library verilog;
use verilog.vl_types.all;
entity controller_vlg_check_tst is
    port(
        green           : in     vl_logic_vector(2 downto 0);
        red             : in     vl_logic_vector(2 downto 0);
        reset_counter   : in     vl_logic;
        yellow          : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end controller_vlg_check_tst;
