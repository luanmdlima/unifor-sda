library verilog;
use verilog.vl_types.all;
entity funcoes is
    port(
        a1              : in     vl_logic_vector(3 downto 0);
        b1              : in     vl_logic_vector(3 downto 0);
        s1              : out    vl_logic_vector(3 downto 0);
        clk_soma        : in     vl_logic;
        clk_subt        : in     vl_logic;
        clk_mult        : in     vl_logic
    );
end funcoes;
