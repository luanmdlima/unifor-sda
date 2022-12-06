library verilog;
use verilog.vl_types.all;
entity controller_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        counter         : in     vl_logic_vector(4 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end controller_vlg_sample_tst;
