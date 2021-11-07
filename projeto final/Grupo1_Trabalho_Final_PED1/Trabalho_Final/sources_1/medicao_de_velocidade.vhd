
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2020 22:18:15
-- Design Name: 
-- Module Name: medicao_de_velocidade - Behavioral
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
use IEEE.std_logic_arith.ALL;
--use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity medicao_de_velocidade is
    Generic(speed_max : integer := 3000);
     Port ( clk : in std_logic;
            pulse : in std_logic;
            speed : out integer range 0 to speed_max);
end medicao_de_velocidade;

architecture Behavioral of medicao_de_velocidade is
   
   signal cont: integer range 0 to 3000 := 0;  
   signal reg: integer range 0 to 3000;
begin
    
    process(pulse, clk)
    begin
        if rising_edge(pulse) then
        cont <= cont+1;
        end if;
        if clk = '1' then
        cont <= 0;
        end if;
    end process;
    
    process(clk)
    begin
        if rising_edge(clk) then
        reg <= cont;
        end if;    
    end process;
    
    speed <= reg*60/8;
end Behavioral;