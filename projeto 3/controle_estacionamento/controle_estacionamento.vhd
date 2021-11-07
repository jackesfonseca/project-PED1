----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2020 15:39:06
-- Design Name: 
-- Module Name: controle_estacionamento - Behavioral
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
use ieee.std_logic_arith.all;

entity controle_estacionamento is
  Port (entrada, saida, clk : in std_logic;
        empty_park_led, full_park_led : out std_logic);
end controle_estacionamento;

architecture Behavioral of controle_estacionamento is
    
begin
    
    process(entrada, saida, clk)
    variable contagem : integer range 0 to 15 := 0;
    begin
        if clk'event and clk='1' then
            if entrada = '1' then
                if contagem <= 15 then
                    contagem := contagem+1;
                end if;
            elsif saida = '1' then
                if contagem >= 0 then
                    contagem := contagem-1;
                end if;
            end if;
        end if;
        
        if contagem = 15 then 
            full_park_led <= '1';
            empty_park_led <= '0';
        else 
            full_park_led <= '0';
            empty_park_led <= '1';       
        end if;  
                             
    end process;
    
 end Behavioral;