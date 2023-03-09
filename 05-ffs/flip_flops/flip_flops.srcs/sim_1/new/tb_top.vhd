----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.03.2023 14:45:29
-- Design Name: 
-- Module Name: tb_top - Behavioral
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

entity tb_top is
--  Port ( );
end tb_top;

architecture testbench of tb_top is

    constant c_CLK_100MHZ_PERIOD : time := 10 ns;

    --Local signals
    signal s_clk_100MHz : std_logic;
    signal s_rst        : std_logic;
    signal s_data       : std_logic;
    signal s_led : std_logic_vector(3 downto 0);

    


begin
    -- Connecting testbench signals with d_ff_rst entity
    -- (Unit Under Test)
    uut_top : entity work.top
        port map(
            CLK100MHZ   => s_clk_100MHz,
            BTNC   => s_rst,
            SW     => s_data,
            LED(0)     => s_led(0),
            LED(1)     => s_led(1),
            LED(2)     => s_led(2),
            LED(3)     => s_led(3)
            
        );
    --------------------------------------------------------
    -- Clock generation process
    --------------------------------------------------------
    p_clk_gen : process
    begin
        while now < 200 ns loop -- 20 periods of 100MHz clock
            s_clk_100MHz <= '0';
            wait for c_CLK_100MHZ_PERIOD / 2;
            s_clk_100MHz <= '1';
            wait for c_CLK_100MHZ_PERIOD / 2;
        end loop;
        wait;                -- Process is suspended forever
    end process p_clk_gen;

    --------------------------------------------------------
    -- Reset generation process
    --------------------------------------------------------
    p_reset_gen : process
    begin
        s_rst <= '0';

        -- ACTIVATE AND DEACTIVATE RESET HERE
        wait for 57 ns;
        s_rst <= '1';
        wait for 10 ns;
        s_rst <= '0';
        wait for 44 ns;
        s_rst <= '1';
        wait for 10 ns;
        s_rst <= '0';
        

        wait;
    end process p_reset_gen;

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
        report "Stimulus process started";
        s_data <='0'; wait for 22 ns;

        -- DEFINE YOUR INPUT DATA HERE
        s_data <='0'; wait for 10 ns;
        s_data <='1'; wait for 10 ns;
        s_data <='0'; wait for 10 ns;
        s_data <='1'; wait for 10 ns;
        
        -- send reset signal after 67ns
        s_data <='1'; wait for 10 ns;
        s_data <='1'; wait for 10 ns;
        s_data <='0'; wait for 10 ns;
        s_data <='1'; wait for 10 ns;
        
        -- send reset signal after 67ns
        s_data <='1'; wait for 10 ns;
        s_data <='1'; wait for 10 ns;
        s_data <='1'; wait for 10 ns;
        s_data <='0'; wait for 10 ns;
        

        report "Stimulus process finished";
        wait;
    end process p_stimulus;

end architecture testbench;