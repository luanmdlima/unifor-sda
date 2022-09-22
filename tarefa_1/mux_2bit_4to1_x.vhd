library ieee;
use ieee.std_logic_1164.all;

entity mux_2bit_4to1_x is
	port(
		S, U, V, W, X : in std_logic_vector(3 downto 0);
		M : out std_logic_vector(3 downto 0)
	);
end mux_2bit_4to1_x;

architecture rtl of mux_2bit_4to1_x is begin
	M <= U when S(0) = '0' and S(1) = '0' else
		V when S(0) = '0' and S(1) = '1' else
		W when S(0) = '1' and S(1) = '0' else
		X when S(0) = '1' and S(1) = '1';
end rtl;