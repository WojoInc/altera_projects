library IEEE;
use IEEE.std_logic_1164.all;

entity ALU32 is
	port(
			X,Y : in std_logic_vector(31 downto 0);
			S : in std_logic_vector(2 downto 0);
			Z : out std_logic_vector(31 downto 0);
			cOut : out std_logic;
			OVFLW : out std_logic
	);
end entity;

architecture STRUCTURAL of ALU32 is
	signal LEWIRE : std_logic_vector(31 downto 0);
	signal AEWIRE : std_logic_vector(31 downto 0);
	signal FADDRC : std_logic_vector(32 downto 0);
begin
CREXTNDR : entity work.CREXTNDR port map(S(2),S(1),FADDRC(0));
cOut <=FADDRC(32);
OVFLW <=FADDRC(32) xor FADDRC(31);
ALU32_GEN : for I in 31 downto 0 generate 
	LEXTNDRX : entity work.LEXTNDR port map(X(I),Y(I),S,LEWIRE(I));
	AREXTNDRX : entity work.AREXTNDR port map(Y(I),S,AEWIRE(I));
	FADDRX : entity work.fulladder port map(LEWIRE(I),AEWIRE(I),Z(I),FADDRC(I), FADDRC(I+1));

end generate;


end architecture;