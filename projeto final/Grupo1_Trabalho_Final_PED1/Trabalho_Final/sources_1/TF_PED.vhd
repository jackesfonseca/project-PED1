----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2020 20:24:25
-- Design Name: 
-- Module Name: TF_PED - Behavioral
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

entity TF_PED is
    Port ( clk : in STD_LOGIC;
           cu : in std_logic_vector(6 downto 0);
           sensor : in std_logic;
           sel : in std_logic;
           pwm_out : out std_logic;
           led : buffer unsigned(0 to 15) := "1000000000000000";
           seg : out std_logic_vector(0 to 6);
           an : out std_logic_vector(0 to 3));    
end TF_PED;

architecture Behavioral of TF_PED is

    signal clk1, clk2, clk3: std_logic;
    signal binary : std_logic_vector (11 downto 0);
    signal speed : integer range 0 to 3000;
    signal dig0, dig1, dig2, dig3 : std_logic_vector(3 downto 0);
    signal cicu : unsigned (6 downto 0);
    signal speedstd : std_logic_vector (11 downto 0);
    component clk_divider
        Port ( clk : in std_logic;
               clk1 : out std_logic;
               clk2 : out std_logic;
               clk3 : out std_logic);
    end component;
    
    component pwm
        Port ( clk : in std_logic;
            cu : in unsigned (6 downto 0);
            pwm_out : out std_logic);
    end component;
    
    component medicao_de_velocidade
    Generic(speed_max : integer := 3000);
     Port ( clk : in std_logic;
            pulse : in std_logic;
            speed : out integer range 0 to speed_max);
    end component;
    
    component animated_speed_indicator
    Generic(speed_max : integer := 6000); 
    Port (clk : in std_logic;
          speed : in integer range 0 to speed_max;
          led : buffer unsigned (15 downto 0) := "1000000000000000");
    end component;
    
    component bin_to_bcd_decoder
        Port ( binary : in  std_logic_vector (11 downto 0);
		       dig0   : out std_logic_vector (3 downto 0);  
		       dig1   : out std_logic_vector (3 downto 0);  
		       dig2   : out std_logic_vector (3 downto 0); 
		       dig3   : out std_logic_vector (3 downto 0));
    end component;
    
    component display
        Port ( clk : in std_logic;
               dig0, dig1, dig2, dig3 : in std_logic_vector (3 downto 0);
               seg : out std_logic_vector (0 to 6);
               an : out std_logic_vector (0 to 3));
    end component; 
    
begin

    process (clk, sel, cu, speed) begin
    if rising_edge(clk) then
    speedstd <= std_logic_vector(TO_UNSIGNED(speed, 12));
        if sel = '0' then
        binary <= speedstd;
        else
        binary <= "00000" & cu (6 downto 0);
        end if;
        cicu <=  unsigned(std_logic_vector(cu));
    end if;
    end process;
    
    
    C1: clk_divider port map (clk, clk1, clk2, clk3);
    C2: pwm port map (clk1, cicu, pwm_out);
    C3: medicao_de_velocidade port map (clk3, sensor, speed);
    C4: animated_speed_indicator port map (clk2, speed, led);
    C5: bin_to_bcd_decoder port map (binary, dig0, dig1, dig2, dig3);
    C6: display port map (clk2, dig0, dig1, dig2, dig3, seg, an);
end Behavioral;
