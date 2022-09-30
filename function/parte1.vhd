library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity funcao is port(
	a1, b1 : in integer range 0 to 15;
	s1 : out integer range 0 to 15
);
end funcao;

architecture hardware of funcao is 
	function soma (a : integer; b : integer) return integer is
		variable resultado : integer;
		begin
			resultado := a + b;
			return resultado;
	end soma;
	
	begin
		s1 <= soma(a1, b1);
end hardware;
