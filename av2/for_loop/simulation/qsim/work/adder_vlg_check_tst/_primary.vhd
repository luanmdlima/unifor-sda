library verilog;
use verilog.vl_types.all;
entity adder_vlg_check_tst is
    port(
        s               : in     vl_logic_vector(3 downto 0);
        zs              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end adder_vlg_check_tst;
