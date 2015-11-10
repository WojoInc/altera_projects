library IEEE;
use IEEE.std_logic_1164.all;

entity Prelab9 is
	port(
			X : in std_logic_vector(1 downto 0);
			Y : in std_logic_vector(3 downto 0);
			Z : out std_logic_vector(4 downto 0)
	);
end entity;

architecture structural of Prelab9 is
	
begin

CLA4_0 : entity work.CLA4 port map (X (3 downto 2)=> "00", X(1 downto 0) => not X(1 downto 0),Y => Y,Z(3 downto 0) => Z(3 downto 0),cIn => '0' , cOut => Z(4));

end architecture;