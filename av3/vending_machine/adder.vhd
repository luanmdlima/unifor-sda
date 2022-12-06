library ieee;
use ieee.numeric_std.all;

entity adder is
	port(
		a, totalS: in unsigned(7 downto 0);
		totalR: out unsigned(7 downto 0)
	);
end entity;

architecture adder of adder is begin
	totalR <= totalS + a;
end architecture;
	