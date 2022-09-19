library ieee;
use ieee.std_logic_1164.all;

entity part5 is
	port(
		SW : in std_logic_vector(9 downto 0);
		LEDR : out std_logic_vector(9 downto 0);
		HEX3, HEX2, HEX1, HEX0 : out std_logic_vector(0 to 6)
	);
end part5;

architecture Structure of part5 is
	component mux_2bit_4to1
		port(
			S, U, V, W, X : in std_logic_vector(1 downto 0);
			M : out std_logic_vector(1 downto 0)
			);
	end component;
	
	component char_7seg
		port(
			C : in std_logic_vector(1 downto 0);
			Display : out std_logic_vector(0 to 6)
		);
	end component;
	
	signal Ch_Sel, Ch0, Ch1, Ch2, Ch3 : std_logic_vector(1 downto 0);
	signal H3_Ch, H2_Ch, H1_Ch, H0_Ch : std_logic_vector(1 downto 0);
	
	begin
		LEDR <= SW;
		
		Ch_Sel <= SW(9 downto 8);
		Ch0 <= SW(7 downto 6);
		Ch1 <= SW(5 downto 4);
		Ch2 <= SW(3 downto 2);
		Ch3 <= SW(1 downto 0);
		
		M3 : mux_2bit_4to1 port map (Ch_Sel, Ch0, Ch1, Ch2, Ch3, H3_Ch);
		M2 : mux_2bit_4to1 port map (Ch_Sel, Ch1, Ch2, Ch3, Ch0, H2_Ch);
		M1 : mux_2bit_4to1 port map (Ch_Sel, Ch2, Ch3, Ch0, Ch1, H1_Ch);
		M0 : mux_2bit_4to1 port map (Ch_Sel, Ch3, Ch0, Ch1, Ch2, H0_Ch);
		
		H3: char_7seg port map(H3_Ch, HEX3);
		H2: char_7seg port map(H2_Ch, HEX2);
		H1: char_7seg port map(H1_Ch, HEX1);
		H0: char_7seg port map(H0_Ch, HEX0);
end Structure;

library ieee;
use ieee.std_logic_1164.all;

entity mux_2bit_4to1 is
	port(
		S, U, V, W, X : in std_logic_vector(1 downto 0);
		M : out std_logic_vector(1 downto 0)
	);
end mux_2bit_4to1;

architecture Behavior of mux_2bit_4to1 is 
	signal m_0, m_1 : std_logic;
	signal U_V, W_X : std_logic_vector(1 downto 0);
	begin
	
	U_V(0) <= (not(S(0)) and U(0)) or (S(0) and V(0));
	U_V(1) <= (not(S(0)) and U(1)) or (S(0) and V(1));
	W_X(0) <= (not(S(0)) and W(0)) or (S(0) and X(0));
	W_X(1) <= (not(S(0)) and W(1)) or (S(0) and X(1));
	
	M(0) <= (not(S(1)) and U_V(0)) or (S(1) and W_X(0));
	M(1) <= (not(S(1)) and U_V(1)) or (S(1) and W_X(1));
end Behavior;

library ieee;
use ieee.std_logic_1164.all;

entity char_7seg is
	port(
		C : in std_logic_vector(1 downto 0);
		Display : out std_logic_vector(0 to 6)
	);
end char_7seg;

architecture Behavior of char_7seg is begin
	Display(0) <= not((not(C(1)) and C(0)) or (C(1) and not C(0)));
	Display(1) <= C(0);
	Display(2) <= C(0);
	Display(3) <= C(1) and C(0);
	Display(4) <= C(1) and C(0);
	Display(5) <= not((not(C(1)) and C(0)) or (C(1) and not C(0)));
	Display(6) <= C(1);
end Behavior;