library ieee;
use ieee.std_logic_1164.all;

entity part3_alternative is
	port(
		SW: in std_logic_vector(8 downto 0);
		LEDG: out std_logic_vector(9 downto 0)
	);
end part3_alternative;

architecture structure of part3_alternative is
	component fa_alternative
		port(
			a, b, ci: in std_logic;
			s, co: out std_logic
		);
	end component;
	signal A, B, S: std_logic_vector(3 downto 0);
	signal C: std_logic_vector(4 downto 0);
	begin
		A <= SW(7 downto 4);
		B <= SW(3 downto 0);
		C(0) <= SW(8);
		bit0: fa_alternative port map(A(0), B(0), C(0), S(0), C(1));
		bit1: fa_alternative port map(A(1), B(1), C(1), S(1), C(2));
		bit2: fa_alternative port map(A(2), B(2), C(2), S(2), C(3));
		bit3: fa_alternative port map(A(3), B(3), C(3), S(3), C(4));
		
		LEDG(4 downto 0) <= (C(4) & S);
		LEDG(9 downto 5) <= "00000";
end structure;

library ieee;
use ieee.std_logic_1164.all;

entity fa_alternative is
	port(
			a, b, ci: in std_logic;
			s, co: out std_logic
		);
end fa_alternative;

architecture structure of fa_alternative is begin
	process(a, b, ci)
		begin
			if(b = '0' and a = '0' and ci = '0') then co <= '0'; s <= '0';
			elsif(b = '0' and a = '0' and ci = '1') then co <= '0'; s <= '1';
			elsif(b = '0' and a = '1' and ci = '0') then co <= '0'; s <= '1';
			elsif(b = '0' and a = '1' and ci = '1') then co <= '1'; s <= '0';
			elsif(b = '1' and a = '0' and ci = '0') then co <= '0'; s <= '1';
			elsif(b = '1' and a = '0' and ci = '1') then co <= '1'; s <= '0';
			elsif(b = '1' and a = '1' and ci = '0') then co <= '1'; s <= '0';
			elsif(b = '1' and a = '1' and ci = '1') then co <= '1'; s <= '1'; 
			end if;
	end process;
end structure;
			
		
