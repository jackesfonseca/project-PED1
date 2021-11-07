library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity conv is
    Port ( clk  : in STD_LOGIC;
           load : in STD_LOGIC;
           dir : in STD_LOGIC;
           JC   : in unsigned (7 downto 0);
           led  : out unsigned (7 downto 0));
end conv;

architecture Behavioral of conv is
    signal clk2: std_logic;

component div
    Port ( clk : in STD_LOGIC;
           clk1 : out STD_LOGIC);
end component;

component desl  
    Port ( clk : in STD_LOGIC;
           load : in STD_LOGIC;
           dir : in STD_LOGIC;
           datain : in unsigned (7 downto 0);
           dataout : out unsigned (7 downto 0));
end component;

begin
    C1: div port map (clk, clk2);
    C2: desl port map (clk2, load, dir, JC, led);
end Behavioral;
