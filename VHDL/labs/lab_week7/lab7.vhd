---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab Week 7
--Filename: lab7.vhd
--Date: 10/23/15
---------------------------------

-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: lab7
--Description: Implementation of a circuit which outputs a 1 when AB<BC.
----------------------------
entity lab7 is
	port(
		ABC : in std_logic_vector(2 downto 0); --with C being least-significant
		Y : out std_logic
	);

end entity;

---------------------------
-- Architecture: structural
-- Description:  Uses one 8to1 multiplexer to output a 1 to Y when the input vector ABC is equal to 001, 010, and 011.
----------------------------------
architecture structural of lab7 is
	signal w0,w4,w5,w6,w7 : std_logic:='0'; --wires to connect component multiplexers
	signal w1,w2,w3 : std_logic:='1'; --represents 001,010 and 011 respectively
	
begin

	MUX : entity work.MUX8TO1 port map (w0,w1,w2,w3,w4,w5,w6,w7,ABC(0),ABC(1),ABC(2),Y);


end architecture;