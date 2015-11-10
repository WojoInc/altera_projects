library IEEE;
use IEEE.std_logic_1164.all;

entity CREXTNDR is
	port(
		cIn : in std_logic;
		S : in std_logic;
		cOut : out std_logic
	);
end entity;

architecture DATAFLOW of CREXTNDR is

begin
cOut <= cIn and S;

end architecture;