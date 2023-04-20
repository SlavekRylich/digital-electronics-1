----------------------------------------------------------------------------------
-- Company: Brno University of Technology
-- Engineer: Slavek Rylich
-- 
-- Create Date: 13.04.2023 18:06:24
-- Design Name: Circuit Training Timer
-- Module Name: ctt - Behavioral
-- Project Name: Project DE1
-- Target Devices: Nexys A7-50T
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
use ieee.numeric_std.all;


----------------------------------------------------------
-- Entity declaration for circuit training timer
----------------------------------------------------------
entity ctt is
  Port (
        clk         : in    std_logic;                       --! Main clock
        rst         : in    std_logic;                       --! High-active synchronous reset
        startBTN    : in    std_logic;                       --! High-active start button
        i_round     : in    std_logic_vector(3 downto 0);    --! Input round count, max 16
        i_run_time  : in    std_logic_vector(5 downto 0);    --! Input run time
        i_rest_time : in    std_logic_vector(5 downto 0);    --! Input rest time
        o_hex       : out   std_logic_vector(5 downto 0)      --! Outpus numbers of timer
   );
end ctt;

----------------------------------------------------------
-- Architecture declaration for circuit training timer
----------------------------------------------------------

architecture Behavioral of ctt is

 -- Define the FSM states
  type t_state is (
    STOP,
    SETUP,
    RUN
  );
  
  -- Define the signals 
  -- Define the signal that uses different states
  signal sig_state : t_state;
  
  signal sig_start_cnt : std_logic;
  signal sig_pause : std_logic;
  signal sig_done  : std_logic;
  
  -- Internal clock enable
  signal sig_en : std_logic;
  
  -- Local delay counter
  signal sig_cnt : unsigned(4 downto 0);
  
  -- Define signal for timer
  signal sig_round          : std_logic_vector(3 downto 0);
  signal sig_run_time       : std_logic_vector(6 downto 0);
  signal sig_rest_time      : std_logic_vector(6 downto 0);
  
  -- Define signal for counter
    signal s_cnt3  : unsigned(3 - 1 downto 0);  -- Tens of seconds
    signal s_cnt2  : unsigned(4 - 1 downto 0);  -- Seconds
    signal s_cnt1  : unsigned(4 - 1 downto 0);  -- Tenths of seconds
    signal s_cnt0  : unsigned(4 - 1 downto 0);  -- Hundredths of seconds
  
  -- Specific values for local counter
  constant c_DELAY_4SEC : unsigned(4 downto 0) := b"1_0000"; --! 4-second delay
  constant c_DELAY_2SEC : unsigned(4 downto 0) := b"0_1000"; --! 2-second delay
  constant c_DELAY_1SEC : unsigned(4 downto 0) := b"0_0100"; --! 1-second delay


begin

--------------------------------------------------------
  -- Instance (copy) of clock_enable entity generates
  -- an enable pulse every 250 ms (4 Hz)
  --------------------------------------------------------
  clk_en0 : entity work.clock_enable
    generic map (
      -- FOR SIMULATION, KEEP THIS VALUE TO 1
      -- FOR IMPLEMENTATION, CALCULATE VALUE: 250 ms / (1/100 MHz)
      -- 1   @ 10 ns
      -- ??? @ 250 ms
      --! g_MAX => 1 
      g_MAX => 1
    )
    port map (
      clk => clk,
      rst => rst,
      ce  => sig_en
    );
 
 --------------------------------------------------------
  -- Instance (copy) of clock_enable entity generates
  -- an enable pulse every 250 ms (4 Hz)
  --------------------------------------------------------
  stop_watch0 : entity work.stopwatch_seconds
    port map (
      clk => clk,
      reset => rst,
      start_i  => sig_start_cnt,
      pause_i => sig_pause,
      i_round => sig_round,
      i_run_time => sig_run_time,
      i_rest_time => sig_rest_time,
      done => sig_done
    );
    

--------------------------------------------------------
  -- p_traffic_fsm:
  -- A sequential process with synchronous reset and
  -- clock_enable entirely controls the sig_state signal
  -- by CASE statement.
  --------------------------------------------------------
p_ctt_fsm : process (clk) is
  begin
  
  if (rising_edge(clk)) then
    if (rst = '1') then 
        sig_state <= STOP;
        
    elsif (sig_en = '1') then
        
        case sig_state is 
            when STOP =>
                sig_pause <= '0';
                
                if (startBTN = '1') then
                    sig_state <= SETUP;
                end if;
                
            when SETUP =>
                -- logic of input parameters
                sig_round <= i_round;
                sig_run_time <= i_run_time;
                sig_rest_time <= i_run_time;
                
                if (startBTN = '1') then
                    sig_state <= RUN;
                end if;
                
                
            when RUN =>
                -- logic of timer
                sig_start_cnt <= '1';
                
                if ( sig_done = '1') then
                    sig_state <= STOP;
                end if;
                       
                 
        end case;
        
    end if;  -- end of if signals condition
  end if;  -- end rising edge condition

end process p_ctt_fsm;

--------------------------------------------------------
  -- p_output_fsm:
  -- A combinatorial process is sensitive to state
  -- changes and sets the output signals accordingly.
  -- This is an example of a Moore state machine and
  -- therefore the output is set based on the active
  -- state only.
  --------------------------------------------------------
p_output_fsm : process (sig_state) is
  begin
   case sig_state is
      when STOP =>
        

      when SETUP =>
        
      
      when RUN =>
        
      
      when others =>
        
    end case;
  end process p_output_fsm;
end Behavioral;
