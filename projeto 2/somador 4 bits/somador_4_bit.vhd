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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity somador is
    Port (display : out std_logic_vector(6 downto 0);
          pin6, pin12 : std_logic_vector(3 downto 0));
          
end somador;

architecture Behavioral of somador is
    signal sel : std_logic_vector (3 downto 0);
begin
     
     sel <= pin6 + pin12; 

     with sel select
        display <= "0000001" when "0000",
                   "1001111" when "0001",
                   "0010010" when "0010",
                   "0000110" when "0011",
                   "1001100" when "0100",
                   "0100100" when "0101",
                   "0100000" when "0110",
                   "0001111" when "0111",
                   "0000000" when "1000",
                   "0000100" when "1001",
                   "0001000" when "1010",
                   "1100000" when "1011",
                   "0110001" when "1100",
                   "1000010" when "1101",
                   "0110000" when "1110",
                   "0111000" when others;


end Behavioral;
