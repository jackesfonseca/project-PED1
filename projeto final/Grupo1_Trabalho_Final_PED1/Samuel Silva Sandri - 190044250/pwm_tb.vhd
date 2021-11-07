library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Test_Bench_PWM is 
end Test_Bench_PWM;

architecture Test_Bench of Test_Bench_PWM is
    component PWM
        port ( clk : in std_logic;
               cu : in unsigned (6 downto 0);
               pwm_out : out std_logic);
    end component;

    signal clk1: std_logic;
    signal CU: unsigned (6 downto 0);
    signal pwm_out: std_logic;

    constant tb_period: time := 500 ns; 
    signal tb_clk: std_logic := '0';

begin
    dut:
    PWM port map ( clk => clk1,
                   cu => CU,
                   pwm_out => pwm_out);

    tb_clk <= not tb_clk after tb_period/2;
    clk1 <= tb_clk;
    
    stimuli: 
    process 
    begin
        CU <= (others => '0');
        wait for 50 us;     
        CU <= "0011001"; 
        wait for 100 us;    
        CU <= "0110010"; 
        wait for 100 us;    
        CU <= "1001011"; 
        wait for 100 us;    
        CU <= "1100100"; 
        wait;
    end process;
    
end Test_Bench;