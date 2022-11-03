library ieee;
use ieee.std_logic_1164.all;

entity part3 is
	port(
		SW: in std_logic_vector(8 downto 0);
		LEDG: out std_logic_vector(9 downto 0)
	);
end part3;

architecture structure of part3 is
	component fa
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
		bit0: fa port map(A(0), B(0), C(0), S(0), C(1));
		bit1: fa port map(A(1), B(1), C(1), S(1), C(2));
		bit2: fa port map(A(2), B(2), C(2), S(2), C(3));
		bit3: fa port map(A(3), B(3), C(3), S(3), C(4));
		
		LEDG(4 downto 0) <= (C(4) & S);
		LEDG(9 downto 5) <= "00000";
end structure;

library ieee;
use ieee.std_logic_1164.all;

entity fa is
	port(
			a, b, ci: in std_logic;
			s, co: out std_logic
		);
end fa;

architecture structure of fa is 
	signal a_xor_b: std_logic;
	begin
		a_xor_b <= a xor b;
		s <= a_xor_b xor ci;
		co <= (not(a_xor_b) and b) or (a_xor_b and ci);
end structure;

--architecture structure of fa is begin
	--process(a, b, ci)
		--variable cnt: integer;
		--begin
			--cnt := 0;
			--if (a = '1') then cnt := cnt + 1; end if;
			--if b = '1' then cnt := cnt + 1; end if;
			--if ci = '1' then cnt := cnt + 1; end if;
			
			--if(cnt = 1 or cnt = 3) then s <= '1'; end if;
			--if(cnt = 2) then s <= '0'; end if;
			--if(cnt = 2 or cnt = 3) then co <= '1'; end if;
			--if(cnt = 1) then co <= '0'; end if;
	--end process;
--end structure;
			
		
