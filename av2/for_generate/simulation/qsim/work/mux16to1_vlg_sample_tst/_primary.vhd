library verilog;
use verilog.vl_types.all;
entity mux16to1_vlg_sample_tst is
    port(
        s               : in     vl_logic_vector(3 downto 0);
        w               : in     vl_logic_vector(0 to 15);
        sampler_tx      : out    vl_logic
    );
end mux16to1_vlg_sample_tst;
