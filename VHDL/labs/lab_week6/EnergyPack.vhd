---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab Week 6
--Filename: EnergyPack.vhd
--Date: 10/12/15
---------------------------------


-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: EnergyPack
--Description: Simulates a circuit which detects 4bit packed energy, defined as 
-- whenever all of the 1s in a set of inputs are grouped together.
----------------------------
entity EnergyPack is
	port(
		S : in std_logic_vector(3 downto 0);-- create 4 bit vector
		Y : out std_logic
	);

end EnergyPack;

---------------------------
-- Architecture: Behavioural
-- Description:  Returns a high output when the inputs exhibit packed energy
--using a with-select statement to define each case.

----------------------------------
architecture behavioural of EnergyPack is
	signal HIGH : std_logic:='1';--define high and low signal
	signal LOW : std_logic:='0';
	
begin
	with S select --define each case of the vector
	Y<= HIGH when "0001",
		HIGH when "0010",
		HIGH when "0011",
		HIGH when "0100",
		HIGH when "0110",
		HIGH when "0111",
		HIGH when "1000",
		HIGH when "1100",
		HIGH when "1110",
		HIGH when "1111",
		LOW when others; -- all other cases return LOW signal
end behavioural;