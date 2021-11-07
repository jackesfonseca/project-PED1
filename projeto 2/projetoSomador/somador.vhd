----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.10.2020 11:29:00
-- Design Name: 
-- Module Name: somador - Behavioral
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity somador is
    Port (display : out std_logic_vector(6 downto 0);
          pin6, pin12 : std_logic_vector(2 downto 0));
          
end somador;

architecture Behavioral of somador is
    signal sel : std_logic_vector (2 downto 0);
begin
     
     sel <= pin6 + pin12; 

     with sel select
        display <= "0000001" when "000",
                   "1001111" when "001",
                   "0010010" when "010",
                   "0000110" when "011",
                   "1001100" when "100",
                   "0100100" when "101",
                   "0100000" when "110",
                   "0001111" when "111",
                   "0000000" when others;


end Behavioral;