library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contadorNbin is
	generic (Max : positive := 99; Nbits : natural := 7);
	port (clk50MHz,rst: in std_logic;
		  	     ena1seg: in std_logic;
			       conta: out std_logic_vector(Nbits downto 0));
		
end entity;
architecture ifsc_v1 of contadorNbin is
begin
	process (rst, clk50MHz)
		variable cnt:  integer range 0 to Max;
	begin
	-- processo do contador de 0 a 9
    if rst = '1' then
      cnt := 0;
    elsif rising_edge(clk50MHz) then
		if ena1seg = '1' then	
			if cnt = Max then
				cnt := 0;
			else
				cnt := cnt + 1;
			end if;
		end if;
    end if;
	 conta <= std_logic_vector(to_unsigned(cnt,Nbits+1));
   end process;
end architecture;