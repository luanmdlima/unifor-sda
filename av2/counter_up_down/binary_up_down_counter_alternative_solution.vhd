library ieee;
use ieee.std_logic_1164.all;

entity binary_up_down_counter_alternative_solution is
	generic(
		min_count: natural:= 0;
		max_count: natural:=255
	);
	port(
		SW: in std_logic_vector(0 to 3);
		KEY: in std_logic_vector(0 to 2);
		LEDG: out integer range min_count to max_count
	);
end entity;

architecture rtl of binary_up_down_counter_alternative_solution is
	signal clk, reset, enable, updown: std_logic;
begin
	clk <= SW(0);
	updown <= SW(1);
	reset <= SW(2);
	enable <= SW(3);
	
	process(clk, reset, enable, updown)
		variable cnt: integer range min_count to max_count;
		begin
		if(rising_edge(clk)) then
			if reset = '1' then cnt:= 0;
				elsif enable = '1' then
					if updown = '1' then cnt:= cnt + 1;
						else cnt:= cnt - 1;
					end if;
			end if;
		end if;
		
		LEDG <= cnt;
	end process;
end rtl;
	
	