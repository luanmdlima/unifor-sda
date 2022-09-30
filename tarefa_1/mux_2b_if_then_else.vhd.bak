library ieee;
use ieee.std_logic_1164.all;

entity mux_2bit_4to1_if_then_else is
	port(
		S, U, V, W, X : in std_logic_vector(3 downto 0);
		M : out std_logic_vector(3 downto 0)
	);
end mux_2bit_4to1_if_then_else;

architecture rtl_if_then_else of mux_2bit_4to1_if_then_else is begin
	mux: process(S, U, V, W, X) begin
		if (S(0) = '0' and S(1) = '0') then M <= U;
			elsif(S(0) = '0' and S(1) = '1') then M <= V;
			elsif(S(0) = '1' and S(1) = '0') then M <= W;
			elsif(S(0) = '1' and S(1) = '0') then M <= X;
		end if;
	end process;
end rtl_if_then_else;