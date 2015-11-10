---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab 8
--Filename: halfadder.vhd
--Date: 10/29/15
---------------------------------


-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: halfadder
--Description: Simulates a circuit which adds 2 bits without support for a carry in bit
----------------------------
entity halfadder is
	port(
			X : in std_logic;
			Y : in std_logic;
			sum : out std_logic;
			car : out std_logic
	);
end entity;
---------------------------
-- Architecture: behavioural
-- Description:  Implements the above entity block using output assignments and simple logic gates
----------------------------------
architecture behavioural of halfadder is

begin
sum <= X xor Y;
car <= X and Y;

end behavioural;