library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity funcoes is port(
	a1, b1 : in integer range 0 to 15;
	s1 : out integer range 0 to 15;
	clk_soma, clk_subt, clk_mult : in bit
);
end funcoes;

architecture hardware of funcoes is 

-- Funcao soma
	function soma (a : integer; b : integer) return integer is
		variable resultado : integer;
		begin
			resultado := a + b;
			return resultado;
	end soma;
	
-- Funcao subtração
	function subtracao (a : integer; b : integer) return integer is
		variable resultado : integer;
		begin
			resultado := a - b;
			return resultado;
	end subtracao;

-- Funcao multiplição
	function multiplicacao (a : integer; b : integer) return integer is
		variable resultado : integer;
		begin
			resultado := a * b;
			return resultado;
	end multiplicacao;
	
	begin
		process(clk_soma, clk_subt, clk_mult) begin
			if(clk_soma = '1') then s1 <= soma(a1, b1);
				elsif(clk_subt = '1') then s1 <= subtracao(a1, b1);
				elsif(clk_mult = '1') then s1 <= multiplicacao(a1, b1);
			end if;
		end process;
end hardware;
