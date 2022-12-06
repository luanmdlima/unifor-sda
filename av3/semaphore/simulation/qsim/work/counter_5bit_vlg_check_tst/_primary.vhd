library verilog;
use verilog.vl_types.all;
entity counter_5bit_vlg_check_tst is
    port(
        q               : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end counter_5bit_vlg_check_tst;
