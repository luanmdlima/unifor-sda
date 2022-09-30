library verilog;
use verilog.vl_types.all;
entity funcoes_vlg_sample_tst is
    port(
        a1              : in     vl_logic_vector(3 downto 0);
        b1              : in     vl_logic_vector(3 downto 0);
        clk_mult        : in     vl_logic;
        clk_soma        : in     vl_logic;
        clk_subt        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end funcoes_vlg_sample_tst;
