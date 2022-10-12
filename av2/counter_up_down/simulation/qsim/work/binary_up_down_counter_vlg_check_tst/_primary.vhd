library verilog;
use verilog.vl_types.all;
entity binary_up_down_counter_vlg_check_tst is
    port(
        q               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end binary_up_down_counter_vlg_check_tst;
