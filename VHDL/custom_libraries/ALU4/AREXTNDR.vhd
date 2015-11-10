---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: HW6
--Filename: AREXTNDR.vhd
--Date: 11/5/15
---------------------------------

-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: AREXTNDR
--Description: Takes only Y and S as inputs, and only modifies Y for the selected operation.
----------------------------
entity AREXTNDR is
	port(
		Y : in std_logic;
		S : in std_logic_vector(2 downto 0);
		Z : out std_logic
	);
end entity;

---------------------------
-- Architecture: STRUCTURAL
-- Description:  Uses 1 8to1 mux to assign inputs for each operation to avoid a giant with select 
-- statement, and also passes in each select bit to the mux. It then returns the given input to Z.
----------------------------------
architecture STRUCTURAL of AREXTNDR is

begin

--first operation input is 0 in order for the LE to pass X through to the output.
--last 3 inputs are '0' as these last 3 operations are handled exclusively by the logic extender,
-- with no output from the arithmetic extender required.

MUX8_0 : entity work.MUX8TO1 port map ('0',Y,(not Y),'0','1','0','0','0',S(2),S(1),S(0),Z);

end architecture;