----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.11.2020 11:11:43
-- Design Name: 
-- Module Name: div - Behavioral
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

entity div is
    Port ( clk : in STD_LOGIC;
           clk1 : out STD_LOGIC);
end div;

architecture Behavioral of div is
    constant CLK_DIV: integer := 100_000_000; 
begin
    -- Clk divisor 100 MHz -> 1Hz
    process(clk)
        variable count: integer:=CLK_DIV;
    begin
        if rising_edge(clk) then
            count:=count-1;
            if count=0 then
                count:=CLK_DIV;
                clk1<='1';
            else
                clk1<='0';
            end if;
        end if;    
    end process;
end Behavioral;
