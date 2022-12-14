library verilog;
use verilog.vl_types.all;
entity adder_vlg_sample_tst is
    port(
        x               : in     vl_logic_vector(3 downto 0);
        y               : in     vl_logic_vector(3 downto 0);
        ze              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end adder_vlg_sample_tst;
