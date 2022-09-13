library ieee;
use ieee.std_logic_1164.all;

entity part3 is
	port(
		SW : in std_logic_vector(9 downto 0);
		LEDG : out std_logic_vector(9 downto 0)
	);
end part3;

architecture Structure of part3 is
	signal m_0, m_1 : std_logic;
	signal S, U, V, W, X, M : std_logic_vector(1 downto 0);
	signal U_V, W_X : std_logic_vector(1 downto 0);
	
	begin
		S(1 downto 0) <= SW(9 downto 8);
		U <= SW(1 downto 0);
		V <= SW(3 downto 2);
		W <= SW(5 downto 4);
		X <= SW(7 downto 6);
	
		U_V(0) <= (not(S(0)) and U(0)) or (S(0) and V(0));
		U_V(1) <= (not(S(0)) and U(1)) or (S(0) and V(1));
		W_X(0) <= (not(S(0)) and W(0)) or (S(0) and X(0));
		W_X(1) <= (not(S(0)) and W(1)) or (S(0) and X(1));
		
		M(0) <= (not(S(1)) and U_V(0)) or (S(1) and W_X(0));
		M(1) <= (not(S(1)) and U_V(1)) or (S(1) and W_X(1));
		
		LEDG(1 downto 0) <= M;
		LEDG(9 downto 2) <= "00000000";
end Structure;
		