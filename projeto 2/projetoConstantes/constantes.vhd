----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.10.2020 18:10:06
-- Design Name: 
-- Module Name: constantes - Behavioral
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

entity constantes is
    Port (display : out bit_vector(6 downto 0));
end constantes;

architecture Behavioral of constantes is
     signal sel : bit_vector (3 downto 0);
begin
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
                   "0111000" when "1111";


end Behavioral;