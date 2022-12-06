library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registrator is
	port(
		clock, tot_ld, tot_clr: in std_logic;
		totalR: in unsigned(7 downto 0);
		totalC, totalS: out unsigned(7 downto 0)
	);
end entity;

architecture registrator of registrator is begin
	process(clock, tot_clr) begin
		if(tot_clr = '1') then
			totalS <= "00000000";
		elsif((clock'event and clock = '1') and (tot_ld = '1')) then
			totalS <= totalR;
			totalC <= totalR;
		end if;
	end process;
end architecture;