library verilog;
use verilog.vl_types.all;
entity counter_bin_n_vlg_check_tst is
    port(
        q               : in     vl_logic_vector(0 to 3);
        sampler_rx      : in     vl_logic
    );
end counter_bin_n_vlg_check_tst;
