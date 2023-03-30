----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2023 17:52:51
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
--  Port ( );  -- entity is always clear in testbench
end tb_top;

architecture testbench of tb_top is

    constant c_CLK_100MHZ_PERIOD : time := 10 ns;

    --Local signals
    signal s_clk_100MHz : std_logic;                    -- Main clock
    signal s_led16      : std_logic_vector(2 downto 0); -- RGB led 1
    signal s_led17      : std_logic_vector(2 downto 0); -- RGB led 2
    signal s_BTNC       : std_logic;                    -- Synchronous reset
    signal s_BTND       : std_logic;                    -- Speed button

    
    
    
    begin
    -- Connecting testbench signals with d_ff_rst entity
    -- (Unit Under Test)
    uut_top : entity work.top
        port map(
            CLK100MHZ  => s_clk_100MHz, --! Main clock
            BTNC       => s_BTNC,  --! Synchronous reset
            LED16_R    => s_led16(0),  --! Red1
            LED16_G    => s_led16(1),  --! Green1
            LED16_B    => s_led16(2),  --! Blue1
            LED17_R    => s_led16(0),  --! Red2
            LED17_G    => s_led16(1),  --! Green2
            LED17_B    => s_led16(2),  --! Blue2
            BTND       => s_BTND     --! Speed button
        );
    --------------------------------------------------------
    -- Clock generation process
    --------------------------------------------------------
    p_clk_gen : process is
  begin
    while now < 10000 ns loop -- 10 usec of simulation
      s_clk_100mhz <= '0';
      wait for c_CLK_100MHZ_PERIOD / 2;
      s_clk_100mhz <= '1';
      wait for c_CLK_100MHZ_PERIOD / 2;
    end loop;
    wait;
  end process p_clk_gen;

  --------------------------------------------------------
  -- Reset generation process
  --------------------------------------------------------
  p_reset_gen : process is
  begin

    s_BTNC <= '0';
    wait for 200 ns;

    -- Reset activated
    s_BTNC <= '1';
    wait for 500 ns;

    -- Reset deactivated
    s_BTNC <= '0';
    wait;

  end process p_reset_gen;
  
  --------------------------------------------------------
  -- Speed button  process
  --------------------------------------------------------
  p_priority_WEST_gen : process is
  begin

    s_BTND <= '0';
    wait for 400 ns;

    -- Reset activated
    s_BTND <= '1';
    wait for 200 ns;

    -- Reset deactivated
    s_BTND <= '0';
    wait;

  end process p_priority_WEST_gen;

  --------------------------------------------------------
  -- Data generation process
  --------------------------------------------------------
  p_stimulus : process is
  begin

    report "Stimulus process started";
    -- No other input data is needed.
    report "Stimulus process finished";
    wait;

  end process p_stimulus;

    

end architecture testbench;
