----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.09.2020 07:15:43
-- Design Name: 
-- Module Name: mix - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY and IS
    PORT ( k, p, s : IN BIT;
           w : OUT BIT);
END and;

ARCHITECTURE Behavioral OF and IS
    
BEGIN

    w <= (k AND p AND (NOT s));

END Behavioral;
