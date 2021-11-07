----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.10.2020 17:14:00
-- Design Name: 
-- Module Name: funcoes - Behavioral
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

entity funcoes is
    Port ( a, b, c, d : in bit;
            segA, segB, segC, segD, segE, segF, segG : out bit);
end funcoes;

architecture Behavioral of funcoes is

begin
    segA <= ((not a) and (not b) and (not c) and d)or
            ((not a)and b and (not c) and (not d))or
            (a and b and (not c) and d)or
            (a and (not b) and c and d);
    
    segB <= ((not a) and b and (not c) and d)or
            (a and b and (not c) and (not d))or
            (a and c and d)or
            (a and b and c)or
            (b and c and (not d));
    
    segC <= ((not a) and (not b) and c and (not d))or
            (a and b and (not c) and (not d))or
            (a and b and c);
    
    segD <= ((not a) and (not b) and (not c) and d)or
            ((not a) and b and (not c) and (not d))or
            (a and (not b) and c and (not d))or
            (b and c and d);
            
    segE <= ((not a) and d)or
            ((not a) and b and not(c))or
            (a and (not b) and (not c) and d);

    segF <= (a and (not b) and d)or
            (a and (not b) and c)or
            (a and c and d)or
            ((not a) and b and (not c) and d);
            
    segG <= ((not a) and b and c and d)or
            (a and b and (not c) and (not d))or
            ((not a) and (not b) and (not c));
        

end Behavioral;
