entity reg4 is
	generic(atraso : time := 100nS);
	
	port(
		clk, en : in bit;
		d0, d1, d2, d3: in bit;
		q0, q1, q2, q3 : out bit
	);
end reg4;

architecture comportamento of reg4 is
	begin
		carga : process(clk)
			variable d0_temp, d1_temp, d2_temp, d3_temp: bit;
				begin
					if clk = '1' then
						if en = '1' then
							d0_temp := d0;
							d1_temp := d1;
							d2_temp := d2;
							d3_temp := d3;
						end if;
					end if;
					
					q0 <= d0_temp after atraso;
					q1 <= d1_temp after atraso;
					q2 <= d2_temp after atraso;
					q3 <= d3_temp after atraso;
		end process carga;
end architecture comportamento;	
							
							
			
		