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
--Entity: CREXTNDR
--Description: Takes as inputs the two most significant select bits, as a 
-- carry input is only needed in two operations, S(010) and S(011). Thus, the least
-- significant select bit is not considered.
----------------------------
entity CREXTNDR is
	port(
		S : in std_logic_vector(1 downto 0);
		cOut : out std_logic
	);
end entity;

---------------------------
-- Architecture: DATAFLOW
-- Description:  Returns a high output when the two most significant bits of the
-- select bits are "01"
----------------------------------
architecture DATAFLOW of CREXTNDR is

begin
cOut <= (not S(1)) and S(0);

end architecture;