library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity pwm is
     Port ( clk : in std_logic;
            cu : in unsigned (6 downto 0);
            pwm_out : out std_logic);
end pwm;

architecture Behavioral of pwm is
    signal Load: std_logic := '0';
    signal Q: unsigned (6 downto 0) := (others => '0');
    signal cu_out: unsigned (6 downto 0) := (others => '0');
begin

process (clk)
    variable contador: integer :=0;
begin
    if rising_edge(clk) then
        if (contador<101) then
            contador := contador + 1;
            Q <= Q + 1;
        elsif (contador=101) then
            Q <= (others => '0');
            contador := 0;
            Load <= not Load;
        end if;    
    end if;
end process;

process (Load, cu) 
begin
    if rising_edge(Load) then
        cu_out <= cu; 
    end if;
end process;

process (Q, cu_out)
begin
    if (Q>cu_out) then
        pwm_out <= '0';
    else
        pwm_out <= '1';
    end if;
end process;
    
end Behavioral;