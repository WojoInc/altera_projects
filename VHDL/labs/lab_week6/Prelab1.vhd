---------------------------------
--Name: TJ Wesolowski
--Course: 1901-031
--Instructor: Dr. Livingston
--Assignment: Lab Week 6
--Filename: Prelab1.vhd
--Date: 10/12/15
---------------------------------


-------------------------------
--Libraries Included:
--IEEE - included for standard logic library
-------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

---------------------------
--Entity: Prelab1
--Description: Simulates a k-map minimized circuit with
-- minterms(2,3,6,11,12,14,15).
----------------------------
entity Prelab1 is
	port(
		A : in std_logic;--define inputs and outputs
		B : in std_logic;
		C : in std_logic;
		D : in std_logic;
		Y : out std_logic
	);
end Prelab1;

---------------------------
-- Architecture: Behavioural
-- Description:  Implements the above entity block using 
-- only not and and or gates.

----------------------------------
architecture behavioural of Prelab1 is

begin--define boolean algebra equation
Y <= ((not A) and (not B) and C) or ((not A) and C and (not D))
		or (A and C and D) or (A and B and (not D));
end behavioural;