library ieee;
use ieee.std_logic_1164.all;

entity mux2to1_4bit is
	port(
			x, y: in std_logic_vector(3 downto 0);
			s: in std_logic;
			m: out std_logic_vector(3 downto 0)
	);
end mux2to1_4bit;

architecture structure of mux2to1_4bit is begin
	m(0) <= (not(s) and x(0)) or (s and y(0));
	m(1) <= (not(s) and x(1)) or (s and y(1));
	m(2) <= (not(s) and x(2)) or (s and y(2));
	m(3) <= (not(s) and x(3)) or (s and y(3));
end structure;