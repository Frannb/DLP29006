library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2bcdCDU is
	port (
		X_bin : in  std_logic_vector(9 downto 0);  --  000 a 999
		C_bcd : out std_logic_vector(3 downto 0);  --  Centena
		D_bcd	: out std_logic_vector(3 downto 0);  --  Dezena
		U_bcd	: out std_logic_vector(3 downto 0)); --  Unidade
 
end entity;
 
architecture Francin of bin2bcdCDU is
	signal X_int : integer range 0 to 999;
	signal C_int, D_int, U_int : integer range 0 to 10;
begin
	
	X_int <= to_integer(unsigned(X_bin));
--	C_int <= X_int/100;
--	D_int <= (X_int rem 100)/10;
--	U_int <= X_int rem 10;
--	
--	C_bcd <= std_logic_vector(to_unsigned(C_int,4));
--	D_bcd <= std_logic_vector(to_unsigned(D_int,4));
--	U_bcd <= std_logic_vector(to_unsigned(U_int,4));
	
	C_bcd <= std_logic_vector(to_unsigned((X_int/100),4));
	D_bcd <= std_logic_vector(to_unsigned(((X_int rem 100)/10),4));
	U_bcd <= std_logic_vector(to_unsigned((X_int rem 10),4));

end architecture;