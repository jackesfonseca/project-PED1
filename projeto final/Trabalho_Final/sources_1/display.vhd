----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2020 22:21:04
-- Design Name: 
-- Module Name: display - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity display is
     Port ( clk : in std_logic;
            dig0, dig1, dig2, dig3 : in std_logic_vector (3 downto 0);
            seg : out std_logic_vector (0 to 6);
            an : out std_logic_vector (0 to 3));
end display;

architecture Behavioral of display is
signal digito0: std_logic_vector(0 to 6);
signal digito1: std_logic_vector(0 to 6);
signal digito2: std_logic_vector(0 to 6);
signal digito3: std_logic_vector(0 to 6);
begin
    
    process(clk)
    variable contador:integer range 0 to 3:=0;
    
    begin
    if(clk'event and clk = '1') then
    if(dig0 = "0000") then
    digito0 <= "0000001";
    end if;
    if(dig0 = "0001") then
    digito0 <=  "1001111";
    end if;
    if(dig0 = "0010") then
    digito0 <=  "0010010";
    end if;
    if(dig0 = "0011") then
    digito0 <=  "0000110";
    end if;
    if(dig0 = "0100") then
    digito0 <=  "1001100";
    end if;
    if(dig0 = "0101") then
    digito0 <=  "0100100";
    end if;
    if(dig0 = "0110") then
    digito0 <=  "0100000";
    end if;
    if(dig0 = "0111") then
    digito0 <=   "0001111";
    end if;
    if(dig0 = "1000") then
    digito0 <= "0000000";
    end if;
    if(dig0 = "1001") then
    digito0 <=  "0000100";
    end if;
    if(dig0 = "1010") then
    digito0 <=  "0001000";
    end if;
    if(dig0 = "1011") then
    digito0 <=  "1100000";
    end if;
    if(dig0 = "1100") then
    digito0 <=  "0110001";
    end if;
    if(dig0 = "1101") then
    digito0 <=  "1000010";
    end if;
    if(dig0 = "1110") then
    digito0 <=  "0110000";
    end if;
    if(dig0 = "1111") then
    digito0 <=  "0111000";
    end if;
    
    
 
    if(dig1 = "0000") then
    digito1 <= "0000001";
    end if;
    if(dig1 = "0001") then
    digito1 <=  "1001111";
    end if;
    if(dig1 = "0010") then
    digito1 <=  "0010010";
    end if;
    if(dig1 = "0011") then
    digito1 <=  "0000110";
    end if;
    if(dig1 = "0100") then
    digito1 <=  "1001100";
    end if;
    if(dig1 = "0101") then
    digito1 <=  "0100100";
    end if;
    if(dig1 = "0110") then
    digito1 <=  "0100000";
    end if;
    if(dig1 = "0111") then
    digito1 <=   "0001111";
    end if;
    if(dig1 = "1000") then
    digito1 <= "0000000";
    end if;
    if(dig1 = "1001") then
    digito1 <=  "0000100";
    end if;
    if(dig1 = "1010") then
    digito1 <=  "0001000";
    end if;
    if(dig1 = "1011") then
    digito1 <=  "1100000";
    end if;
    if(dig1 = "1100") then
    digito1 <=  "0110001";
    end if;
    if(dig1 = "1101") then
    digito1 <=  "1000010";
    end if;
    if(dig1 = "1110") then
    digito1 <=  "0110000";
    end if;
    if(dig1 = "1111") then
    digito1 <=  "0111000";
    end if;
    
    
 
   
    if(dig2 = "0000") then
    digito2 <= "0000001";
    end if;
    if(dig2 = "0001") then
    digito2 <=  "1001111";
    end if;
    if(dig2 = "0010") then
    digito2 <=  "0010010";
    end if;
    if(dig2 = "0011") then
    digito2 <=  "0000110";
    end if;
    if(dig2 = "0100") then
    digito2 <=  "1001100";
    end if;
    if(dig2 = "0101") then
    digito2 <=  "0100100";
    end if;
    if(dig2 = "0110") then
    digito2 <=  "0100000";
    end if;
    if(dig2 = "0111") then
    digito2 <=   "0001111";
    end if;
    if(dig2 = "1000") then
    digito2 <= "0000000";
    end if;
    if(dig2 = "1001") then
    digito2 <=  "0000100";
    end if;
    if(dig2 = "1010") then
    digito2 <=  "0001000";
    end if;
    if(dig2 = "1011") then
    digito2 <=  "1100000";
    end if;
    if(dig2 = "1100") then
    digito2 <=  "0110001";
    end if;
    if(dig2 = "1101") then
    digito2 <=  "1000010";
    end if;
    if(dig2 = "1110") then
    digito2 <=  "0110000";
    end if;
    if(dig2 = "1111") then
    digito2 <=  "0111000";
    end if;
    

    
    
    if(dig3 = "0000") then
    digito3 <= "0000001";
    end if;
    if(dig3 = "0001") then
    digito3 <=  "1001111";
    end if;
    if(dig3 = "0010") then
    digito3 <=  "0010010";
    end if;
    if(dig3 = "0011") then
    digito3 <=  "0000110";
    end if;
    if(dig3 = "0100") then
    digito3 <=  "1001100";
    end if;
    if(dig3 = "0101") then
    digito3 <=  "0100100";
    end if;
    if(dig3 = "0110") then
    digito3 <=  "0100000";
    end if;
    if(dig3 = "0111") then
    digito3 <=   "0001111";
    end if;
    if(dig3 = "1000") then
    digito3 <= "0000000";
    end if;
    if(dig3 = "1001") then
    digito3 <=  "0000100";
    end if;
    if(dig3 = "1010") then
    digito3 <=  "0001000";
    end if;
    if(dig3 = "1011") then
    digito3 <=  "1100000";
    end if;
    if(dig3 = "1100") then
    digito3 <=  "0110001";
    end if;
    if(dig3 = "1101") then
    digito3 <=  "1000010";
    end if;
    if(dig3 = "1110") then
    digito3 <=  "0110000";
    end if;
    if(dig3 = "1111") then
    digito3 <=  "0111000";
    end if;
    
    
    if(contador =0) then
    an(0) <= '0';
    an(1) <= '1';
    an(2) <= '1';
    an(3) <= '1';
    seg<=digito0;
    contador:=contador+1;
    elsif (contador =1) then
    an(0) <= '1';
    an(1) <= '0';
    an(2) <= '1';
    an(3) <= '1';
    seg<=digito1;
    contador:=contador+1;
    elsif (contador=2) then
    an(0) <= '1';
    an(1) <= '1';
    an(2) <= '0';
    an(3) <= '1';
    seg<=digito2;
    contador:=contador+1;
    elsif(contador=3) then
    an(0) <= '1';
    an(1) <= '1';
    an(2) <= '1';
    an(3) <= '0';
    seg<=digito3;
    contador:=0;
    end if;
    end if;
    end process;
    
  


end Behavioral;
