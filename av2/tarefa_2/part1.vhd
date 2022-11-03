library ieee;
use ieee.std_logic_1164.all;

entity part1 is
	port(
		SW: in std_logic_vector(7 downto 0);
		LEDG: out std_logic_vector(7 downto 0);
		HEX1, HEX0: out std_logic_vector(0 to 6)
	);
end part1;

architecture structure of part1 is
	begin
		LEDG <= SW;
		digit1: work.bcd7seg port map(SW(7 downto 4), HEX1);
		digit0: work.bcd7seg port map(SW(3 downto 0), HEX0);
end structure;
