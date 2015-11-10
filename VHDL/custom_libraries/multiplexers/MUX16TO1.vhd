---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab Week 7
--Filename: MUX16TO1.vhd
--Date: 10/23/15
---------------------------------

-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: MUX16TO1
--Description: Implementation of a circuit which outputs the value selected by the 4bit select vector S
----------------------------
entity MUX16TO1 is
	port(
		D : in std_logic_vector(15 downto 0);
		S : in std_logic_vector(3 downto 0);
		Y : out std_logic
	);
end entity;

---------------------------
-- Architecture: structural
-- Description:  Uses two 8to1 multiplexers as well as a single 2 to 1 multiplexer (represented by the with-select statement)
----------------------------------
architecture structural of MUX16TO1 is
	signal w1,w2 : std_logic:='0';-- wires representing the outputs of each 8to1mux.
	
begin
	MUX0 : entity work.MUX8TO1 port map(D(0),D(1),D(2),D(3),D(4),D(5),D(6),D(7),S(2),S(1),S(0),w1);
	MUX1 : entity work.MUX8TO1 port map(D(8),D(9),D(10),D(11),D(12),D(13),D(14),D(15),S(2),S(1),S(0),w2);
	with S(3) select -- selects either the first or second 8to1mux based on the most significant bit of the select vector (S).
	Y <= w1 when '0',
		w2 when '1';
	
end architecture;