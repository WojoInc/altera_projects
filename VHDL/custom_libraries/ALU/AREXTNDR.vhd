library IEEE;
use IEEE.std_logic_1164.all;

entity AREXTNDR is
	port(
		Y : in std_logic;
		S : in std_logic_vector(2 downto 0);
		Z : out std_logic
	);
end entity;

architecture STRUCTURAL of AREXTNDR is

begin
MUX8_0 : entity work.MUX8TO1 port map ('0','0','0','0','1',Y,(not Y),'0',S(2),S(1),S(0),Z);

end architecture;