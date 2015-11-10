---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab Week 6
--Filename: Lab.vhd
--Date: 10/12/15
---------------------------------


-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: Lab
--Description: Lights from 0 to 4 lights on the dev board,
-- corresponding with the number of 1s in the input.
----------------------------
entity Lab is
	port(
		S : in std_logic_vector(3 downto 0); --define 4bit vector
		Y : out std_logic_vector(3 downto 0)
	);

end Lab;

---------------------------
-- Architecture: Dataflow
-- Description:  Implements the above entity using a with-select
-- statement to cover all of the cases of input from S.
----------------------------------
architecture dataflow of Lab is
	signal HIGH : std_logic:='1';
	signal LOW : std_logic:='0';
	
begin
	with S select
	Y <= "0000" when "0000",
			"0001" when "0001",
			"0001" when "0010",
			"0001" when "0100",
			"0001" when "1000",
			"0011" when "0011",
			"0011" when "0110",
			"0011" when "1100",
			"0011" when "1001",
			"0011" when "0101",
			"0011" when "1010",
			"0111" when "0111",
			"0111" when "1110",
			"0111" when "1011",
			"0111" when "1101",
			"1111" when "1111";
			
end dataflow;