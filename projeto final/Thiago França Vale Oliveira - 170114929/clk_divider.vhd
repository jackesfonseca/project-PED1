----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2020 22:09:17
-- Design Name: 
-- Module Name: clk_divider - Behavioral
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

entity clk_divider is
    Port ( clk : in STD_LOGIC;
           clk1 : out STD_LOGIC;
           clk2 : out STD_LOGIC;
           clk3 : out STD_LOGIC);
end clk_divider;

architecture Behavioral of clk_divider is

    constant divisorCLK1: integer := 50;
    constant divisorCLK2: integer := 500_000; 
    constant divisorCLK3: integer := 100_000_000;
    
begin

    process(clk)
        variable cont1: integer:=divisorCLK1;
        variable cont2: integer:=divisorCLK2;
        variable cont3: integer:=divisorCLK3;
    begin
        if rising_edge(clk) then
            cont1:=cont1-1;
            cont2:=cont2-1;
            cont3:=cont3-1;
            if cont1=0 then
                cont1:=divisorCLK1;
                clk1<='1';
            else
                clk1<='0';
            end if;
            if cont2=0 then
                cont2:=divisorCLK2;
                clk2<='1';
            else
                clk2<='0';
            end if;
            if cont3=0 then
                cont3:=divisorCLK3;
                clk3<='1';
            else
                clk3<='0';
            end if;
        end if;    
    end process;
end Behavioral;
