library ieee;
use ieee.std_logic_1164.all;

entity mux_2b_if_then_else is
	port(
		SW : in std_logic_vector(9 downto 0);
		LEDG : out std_logic_vector(9 downto 0)
	);
end mux_2b_if_then_else;

architecture rtl_if_then_else of mux_2b_if_then_else is
	signal Sel : std_logic;
	signal X, Y, M : std_logic_vector(3 downto 0);
	--mux: process(S, U, V, W, X) begin
	--	if (S(0) = '0' and S(1) = '0') then M <= U;
	--		elsif(S(0) = '0' and S(1) = '1') then M <= V;
	--		elsif(S(0) = '1' and S(1) = '0') then M <= W;
	--		elsif(S(0) = '1' and S(1) = '0') then M <= X;
	--	end if;
	--end process;
	begin
		X <= SW(3 downto 0);
		Y <= SW(7 downto 4);
		Sel <= SW(9);
		
		process(X, Y, Sel) begin 
		if Sel = '0' then M <= X; else M <= Y; end if;
		end process;
		
		LEDG(9) <= SW(9);
		LEDG(8 downto 4) <= "00000";
		LEDG(3 downto 0) <= M;
end rtl_if_then_else;