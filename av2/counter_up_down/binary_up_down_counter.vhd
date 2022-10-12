library ieee;
use ieee.std_logic_1164.all;

entity binary_up_down_counter is
	generic(
		min_count: natural:= 0;
		max_count: natural:=255
	);
	
	port(
		clk, reset, enable, updown: in std_logic;
		q: out integer range min_count to max_count
	);	
end entity;

architecture rtl of binary_up_down_counter is
	signal direction: integer range -1 to 1;
begin
	process(updown) begin
		if(updown = '1') then direction <= 1;
		else direction <= -1;
		end if;
	end process;
	
	process(clk)
		variable cnt: integer range min_count to max_count;
	begin
		if(rising_edge(clk)) then
			if reset = '1' then cnt:= 0;
				elsif enable = '1' then cnt:= cnt + direction;
			end if;
		end if;
		
		q <= cnt;
	end process;
end rtl;
	
	