----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2023 19:30:16
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
    -- Port ();   entity is always clear if it is testbench
end tb_top;

architecture testbench of tb_top is

    constant c_CLK_100MHZ_PERIOD : time := 10 ns;

    --Local signals
    signal s_clk_100MHz : std_logic;
    signal s_SW       : std_logic_vector(1 downto 0);
    signal s_led1 : std_logic_vector(3 downto 0);
    signal s_led2 : std_logic_vector(11 downto 0);
--    signal s_CA : std_logic ; --! Cathod A
--    signal s_CB : std_logic ; --! Cathod B
--    signal s_CC : std_logic ; --! Cathod C
--    signal s_CD : std_logic ; --! Cathod D
--    signal s_CE : std_logic ; --! Cathod E
--    signal s_CF : std_logic ; --! Cathod F
--    signal s_CG : std_logic ; --! Cathod G
    signal s_AN : std_logic_vector(6 downto 0);
    signal s_BTNC : std_logic;

    
    
    
    begin
    -- Connecting testbench signals with d_ff_rst entity
    -- (Unit Under Test)
    uut_top : entity work.top
        port map(
            CLK100MHZ   => s_clk_100MHz,
            BTNC   => s_BTNC,
            SW     => s_SW,
            LED1 => s_led1,
            LED2 => s_led2
--            CA   => s_CA,
--            CB   => s_CB,
--            CC   => s_CC,
--            CD   => s_CD,
--            CE   => s_CE,
--            CF   => s_CF,
--            CG   => s_CG
            
        );
    --------------------------------------------------------
    -- Clock generation process
    --------------------------------------------------------
    p_clk_gen : process
    begin
        while now < 800 ns loop -- 20 periods of 100MHz clock
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
            s_BTNC <= '0'; wait for 12 ns;
        
    
        -- Reset activated
        s_BTNC <= '1'; wait for 20 ns;
       
    
        -- Reset deactivated
        s_BTNC <= '0'; wait for 453 ns;
        s_BTNC <= '1'; wait for 20 ns;
        s_BTNC <= '0'; wait for 453 ns;
    
        wait;
    end process p_reset_gen;

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
        report "Stimulus process started";
        s_SW(1) <='1';
        s_SW(0) <='1'; wait for 300 ns;

        -- DEFINE YOUR INPUT DATA HERE
        --s_data <='0'; wait for 10 ns;
        s_SW(0) <='1'; wait for 300 ns;
        
        s_SW(0) <='0'; wait for 300 ns;
        
        s_SW(0) <='1'; wait for 300 ns;
        
        s_SW(0) <='0'; wait for 000 ns;
        s_SW(0) <='1'; wait for 100 ns;
        s_SW(0) <='0'; wait for 000 ns;
        s_SW(0) <='1'; wait for 100 ns;
        

        report "Stimulus process finished";
        wait;
    end process p_stimulus;
    

end architecture testbench;
