---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: HW6
--Filename: CREXTNDR.vhd
--Date: 11/5/15
---------------------------------

-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: LEXTNDR
--Description: Takes as inputs both X and Y in order to perform logical operations, and, xor, nor.
-- All other opcodes are arithmetic, and thus X is passed straight through to Z.
----------------------------
entity LEXTNDR is
	port(
			X : in std_logic;
			Y : in std_logic;
			S : in std_logic_vector(2 downto 0); -- where s(2) is most significant and represents M.
			Z : out std_logic
	);
end entity;

---------------------------
-- Architecture: LEXTNDR
-- Description:  Uses a single 8to1 mux to assign inputs to Z based on the current operation, denoted by the select bits.
-- The MUX allows each case to be laid out as an input, eliminating a large with select statement.
----------------------------------
architecture STRUCTURAL of LEXTNDR is

begin

-- for the first 5 operations, pass X through, as these operations are handled exclusively by the
-- arithmetic extender, and do not require any manipulation by the logic extender.
-- The last 3 inputs are bitwise and, bitwise xor, and bitwise nor respectively.
MUX8_0 : entity work.MUX8TO1 port map (X,X,X,X,X,(X and Y),(X xor Y),(not (X or Y)),S(2),S(1),S(0),Z); 

end architecture;