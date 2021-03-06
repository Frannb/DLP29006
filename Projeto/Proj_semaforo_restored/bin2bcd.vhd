library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2bcd is
    generic(in_Nbits : integer := 9; out_Nbits : integer := 3);
	port (
		X_bin : in  std_logic_vector(in_Nbits downto 0);  --  00 a 99
		--C_bcd : out std_logic_vector(out_Nbits downto 0);  --  Centena
		D_bcd	: out std_logic_vector(out_Nbits downto 0);  --  Dezena
		U_bcd	: out std_logic_vector(out_Nbits downto 0)); --  Unidade
 
end entity;
 
architecture FRANCIN of bin2bcd is
	signal X_int : integer range 0 to 99;
	signal C_int, D_int, U_int : integer range 0 to 10;
begin
	
	X_int <= to_integer(unsigned(X_bin));
	
	--C_bcd <= std_logic_vector(to_unsigned((X_int/100),4));
	D_bcd <= std_logic_vector(to_unsigned(((X_int rem 100)/10),4));
	U_bcd <= std_logic_vector(to_unsigned((X_int rem 10),4));

end architecture;