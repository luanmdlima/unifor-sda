library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_5bit is
	port(
		clock, reset: in std_logic;
		q: out unsigned(4 downto 0)
	);
end entity;

architecture counter_5bit of counter_5bit is
	signal count: unsigned(4 downto 0);
	begin
		process(clock) begin
			if((clock = '1') and (reset = '1')) then 
				count <= "00000"; 
				elsif(clock = '1') then 
					--count <=	 count + 1;
					--count <= count + '1';
					count <= count + "00001";
			end if;
			q <= count;
		end process;
		
end architecture;