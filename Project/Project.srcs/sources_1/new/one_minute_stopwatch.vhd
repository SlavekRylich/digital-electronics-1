------------------------------------------------------------------------
--
-- One-minute stopwatch.
-- Nexys A7-50T, Vivado v2020.1.1, EDA Playground
--
-- Copyright (c) 2020 Tomas Fryza
-- Dept. of Radio Electronics, Brno University of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

------------------------------------------------------------------------
-- Entity declaration for stopwatch counter
------------------------------------------------------------------------
entity stopwatch_seconds is
    port(
        clk            : in  std_logic;
        reset          : in  std_logic;
        start_i        : in  std_logic;     -- Start counting
        pause_i        : in  std_logic;     -- Pause counting
        -- Tens of seconds
        seconds_h_o    : out std_logic_vector(3 - 1 downto 0);
        -- Seconds
        seconds_l_o    : out std_logic_vector(4 - 1 downto 0);
        -- Tenths of seconds
        hundredths_h_o : out std_logic_vector(4 - 1 downto 0);
        -- Hundredths of seconds
        hundredths_l_o : out std_logic_vector(4 - 1 downto 0)
    );
end entity stopwatch_seconds;

------------------------------------------------------------------------
-- Architecture declaration for stopwatch counter
------------------------------------------------------------------------
architecture Behavioral of stopwatch_seconds is

    -- Internal clock enable
    signal s_en    : std_logic;
    signal s_updown    : std_logic;
    -- Internal start button flag
    signal s_start : std_logic;
    -- Local counters
	signal s_cnt3  : unsigned(3 - 1 downto 0);  -- Tens of seconds
    signal s_cnt2  : unsigned(4 - 1 downto 0);  -- Seconds
    signal s_cnt1  : unsigned(4 - 1 downto 0);  -- Tenths of seconds
    signal s_cnt0  : unsigned(4 - 1 downto 0);  -- Hundredths of seconds

begin
    --------------------------------------------------------------------
    -- Instance (copy) of clock_enable entity generates an enable pulse
    -- every 10 ms (100 Hz).

    -- JUST FOR SHORTER/FASTER SIMULATION
    s_en <= '1';
    s_updown <= '1';
--    clk_en0 : entity work.clock_enable
--generic map(
 --          g_MAX =>  4      -- 10 ms / (1/100 MHz) = g_MAX
  --      )
  --      port map(
 --           clk => clk,
 --           rst => reset,
 --           ce  => s_en
 --       );

    --------------------------------------------------------------------
    -- p_stopwatch_cnt:
    -- Sequential process with synchronous reset and clock enable,
    -- which implements four decimal counters. The lowest of the 
    -- counters is incremented every 10 ms, and each higher-order 
    -- counter is incremented if all lower-order counters are equal 
    -- to the maximum value.
    --------------------------------------------------------------------
    p_stopwatch_cnt : process(clk)
    begin
        if rising_edge(clk) then

            if (reset = '1') then           -- Synchronous reset
                s_cnt3 <= (others => '0');  -- Clear all bits
                s_cnt2 <= (others => '0');
                s_cnt1 <= (others => '0');
                s_cnt0 <= (others => '0');
                s_start <= '0';             -- Clear start button flag

            -- Use flag to remember if start button was pressed
            elsif (start_i = '1') then
                s_start <= '1';             -- Set start button flag

--            -- Counting only if start was pressed and pause is inactive
             if  (s_en = '1' and s_start = '1' and pause_i = '0' and s_updown = '1') then
                s_cnt0 <= s_cnt0 + 1;       -- Increment every 10 ms

                -- Test hundredths of seconds
                --- WRITE YOUR CODE HERE
                if ( s_cnt0 = "1001") then    
                	s_cnt1 <= s_cnt1 + 1;
                    s_cnt0 <= (others => '0');

                    -- Test tenths of seconds
                    --- WRITE YOUR CODE HERE
                    if ( s_cnt1 = "1001") then
                        s_cnt2 <= s_cnt2 + 1;
                        s_cnt1 <= (others => '0');
                      

                
                        --- WRITE YOUR CODE HERE

                            -- Test tens of seconds
                            --- WRITE YOUR CODE HERE
                            if ( s_cnt2 = "100") then   -- 10 s
                                s_cnt3 <= s_cnt3 + 1;
                                s_cnt2 <= (others => '0');
                            end if;
                    end if;
                    end if;
               elsif  (s_en = '1' and s_start = '1' and pause_i = '0' and s_updown = '0') then
                s_cnt0 <= s_cnt0 + 1;       -- Increment every 10 ms

                -- Test hundredths of seconds
                --- WRITE YOUR CODE HERE
                if ( s_cnt0 = "1001") then    
                	s_cnt1 <= s_cnt1 - 1;
                    s_cnt0 <= (others => '1');

                    -- Test tenths of seconds
                    --- WRITE YOUR CODE HERE
                    if ( s_cnt1 = "1001") then
                        s_cnt2 <= s_cnt2 + 1;
                        s_cnt1 <= (others => '0');
                      

                
                        --- WRITE YOUR CODE HERE

                            -- Test tens of seconds
                            --- WRITE YOUR CODE HERE
                            if ( s_cnt2 = "100") then   -- 10 s
                                s_cnt3 <= s_cnt3 + 1;
                                s_cnt2 <= (others => '0');
                            end if;
                    end if;
                    end if;
                
                end if;       
            end if;
        end if;
    end process p_stopwatch_cnt;

    -- Outputs must be retyped from "unsigned" to "std_logic_vector"
    seconds_h_o    <= std_logic_vector(s_cnt3);
    seconds_l_o    <= std_logic_vector(s_cnt2);
    hundredths_h_o <= std_logic_vector(s_cnt1);
    hundredths_l_o <= std_logic_vector(s_cnt0);

end architecture Behavioral;
