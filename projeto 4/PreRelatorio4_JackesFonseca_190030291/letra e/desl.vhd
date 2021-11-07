----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.11.2020 11:11:43
-- Design Name: 
-- Module Name: desl - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity desl is
    Port ( clk : in STD_LOGIC;
           load : in STD_LOGIC;
           dir : in STD_LOGIC;
           datain : in unsigned (7 downto 0);
           dataout : out unsigned (7 downto 0));
end desl;

architecture Behavioral of desl is
    signal aux : unsigned (7 downto 0);
begin
    dataout <= aux;
    process(clk)
    begin
        if(rising_edge(clk)) then
            if load='1' then
                aux <= datain;
            else
                if dir='1' then
                    aux <= aux sll 1;
                else
                    aux <= aux srl 1;
                end if;
            end if;
        end if;
    end process;

end Behavioral;
