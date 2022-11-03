library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity part2 is
	port(
		SW: in std_logic_vector(3 downto 0);
		HEX1, HEX0: out std_logic_vector(0 to 6)
	);
end part2;

architecture structure of part2 is
	signal n: std_logic_vector(3 downto 0);
	begin
		process(SW) begin
			if(SW < "1001") then
				u1: work.bcd7seg port map(SW, HEX0);
				u2: work.bcd7seg port map("1111", HEX1);
			else
				n <= SW - "1010";
				u1: work.bcd7seg port map(n, HEX0);
				u2: work.bcd7seg port map("0001", HEX1);
			end if
		end process;
end structure;