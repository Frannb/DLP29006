package pkg_log is
	function log2c (n : integer) return integer is
		variable m , p : integer;
	begin
		m := 0;
		p : = 1;
		while p < n loop
			m : = m + 1;
			p := p * 2;
		end loop;
		return m;
	end log2c;
end package body;