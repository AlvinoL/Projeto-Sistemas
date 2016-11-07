	library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all;
	
	
	entity reg_des is
	port(ck, ld      :     in      std_logic;
	     d1, d2      :     in      unsigned(4 downto 0);
		  q1, q2      : buffer		 unsigned(4 downto 0));
	end reg_des;
	
	architecture hardware of reg_des is
	begin
	  proc1: process(ck)
	  begin
	    if rising_edge(ck) then
		  if ld = '1' then
		    q1 <= d1;
			 q2 <= d2;
		  else
		    q1 <= shift_left(q1,1);
			 q2 <= shift_left(q2,1);
		  end if;
		 end if;
	  end process proc1;
	end hardware;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	