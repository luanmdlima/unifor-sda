library ieee;
use ieee.std_logic_1164.all;
use work.mux4to1_package.all;

entity mux16to1 is
	port(
		w : in std_logic_vector(0 to 15);
		s : in std_logic_vector(3 downto 0);
		f : out std_logic
	);
end mux16to1;

architecture structure of mux16to1 is
	signal m : std_logic_vector(0 to 3);
	
	begin
		g1 : for i in 0 to 3 generate
			muxes: mux4to1 port map(
				w(4*i), w(4*i+1), w(4*i+2), w(4*i+3),
				s(1 downto 0),
				m(i)
			);
		end generate;
		
		mux5: mux4to1 port map(
			m(0), m(1), m(2), m(3), s(3 downto 2), f  
		);
end structure;