library verilog;
use verilog.vl_types.all;
entity system_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        c               : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        s               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end system_vlg_sample_tst;
