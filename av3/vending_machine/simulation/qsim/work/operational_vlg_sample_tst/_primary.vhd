library verilog;
use verilog.vl_types.all;
entity operational_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        s               : in     vl_logic_vector(7 downto 0);
        tot_clr         : in     vl_logic;
        tot_ld          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end operational_vlg_sample_tst;
