library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator is
	port(
		s, totalC: in std_logic_vector(7 downto 0);
		tot_lt_s: out std_logic
	);
end entity;

architecture comparator of comparator is begin
	tot_lt_s <= '1' when totalC <= s else '0';
end architecture;