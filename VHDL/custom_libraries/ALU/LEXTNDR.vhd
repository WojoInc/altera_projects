library IEEE;
use IEEE.std_logic_1164.all;

entity LEXTNDR is
	port(
			X : in std_logic;
			Y : in std_logic;
			S : in std_logic_vector(2 downto 0); -- where s(2) is most significant and represents M.
			Z : out std_logic
	);
end entity;

architecture STRUCTURAL of LEXTNDR is

begin
MUX8_0 : entity work.MUX8TO1 port map ((not X),(X and Y),(X),(X or Y),X,X,X,X,S(2),S(1),S(0),Z);
--MUX8_1 : entity work.MUX8TO1 port map ((not X),(X and Y),(X),(X or Y),X,X,X,X,S(2),S(1),S(0),Z);
end architecture;