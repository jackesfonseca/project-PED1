----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.12.2020 13:08:18
-- Design Name: 
-- Module Name: animated_speed_indicator - Behavioral
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

entity animated_speed_indicator is
    Generic(speed_max : integer := 6000); 
    Port (clk : in std_logic;
          speed : in integer range 0 to speed_max;
          led : buffer unsigned (15 downto 0) := "1000000000000000");
end animated_speed_indicator;

architecture Behavioral of animated_speed_indicator is
begin
    -- shif register
    process(clk)
        variable cont_speed : integer := 0;
        begin 
            led <= led;
            if rising_edge(clk) then
            cont_speed := cont_speed + 1;
                if led = "0000000000000000" then
                    led <= "1000000000000000";
                else
                    if speed = 0 then
                        led <= "1000000000000000";
                    else
                        if cont_speed >= (speed_max - speed)/100 then
                            led <= led srl 1;
                            cont_speed := 0;
                        end if;
                    end if;
                end if;
            end if;
    end process;
end Behavioral;