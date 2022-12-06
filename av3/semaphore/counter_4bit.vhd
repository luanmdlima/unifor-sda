library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity counter_4bit is
	port(
		clk, reset: in std_logic;
		counter: out std_logic_vector(4 downto 0)
	);
end counter_4bit;

architecture behavior of counter_4bit is begin
	signal one: std_logic_vector(4 downto 0);
	process(clk) begin
		if(reset='0')then counter <= "00000";
			else 
				one <= "00001"
				counter <= counter + one;
      end if;
	end process;
end behavior;