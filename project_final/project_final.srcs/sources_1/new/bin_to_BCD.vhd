----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2023 18:28:57
-- Design Name: 
-- Module Name: bin_to_BCD - Behavioral
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity bin_to_BCD is
    generic(N: positive := 6);
    port(
        clk, reset: in std_logic;
        binary_in: in std_logic_vector(N-1 downto 0);
         bcd0    : out std_logic_vector(3 downto 0);
         bcd1    : out std_logic_vector(3 downto 0)
    );
end bin_to_BCD ;
 
architecture behaviour of bin_to_BCD is
    type states is
     ( 
         start, 
         shift, 
         done
     );
    signal state, state_next: states;
 
    signal binary, binary_next: std_logic_vector(N-1 downto 0);
    signal bcds, bcds_reg, bcds_next: std_logic_vector(11 downto 0);
    -- output register keep output constant during conversion
    signal bcds_out_reg, bcds_out_reg_next: std_logic_vector(11 downto 0);
    -- need to keep track of shifts
    signal shift_counter, shift_counter_next: natural range 0 to N;
    
    signal sig_bcd0 : std_logic_vector(3 downto 0);
    signal sig_bcd1 : std_logic_vector(3 downto 0);
    
    signal sig_en : std_logic;
begin
 
-- drv_7seg: entity work.driver_7seg_4digits_for_timer
-- port map 
-- (
--    clk     =>      clk,
--    rst     =>      reset,
--    data0    =>     sig_bcd0,
--    data1    =>     sig_bcd1,
    
--       seg(6)   => CA,
--       seg(5)   => CB,
--       seg(4)   => CC,
--       seg(3)   => CD,
--       seg(2)   => CE,
--       seg(1)   => CF,
--       seg(0)   => CG,
      

--       dig(3 downto 0) => AN(3 downto 0)
-- );
 
 clk_en0 : entity work.clock_enable
    generic map 
    (
      -- FOR SIMULATION, KEEP THIS VALUE TO 1
      -- FOR IMPLEMENTATION, CALCULATE VALUE: 250 ms / (1/100 MHz)
      -- 1   @ 10 ns
      -- 25000000 @ 250 ms
      -- 100000000 @ 1 s
      g_MAX => 1 
    )
    port map 
    (
      clk => clk,
      rst => reset,
      ce => sig_en 
    );
 
    process(clk, reset)
    begin
        if reset = '1' then
            binary <= (others => '0');
            bcds <= (others => '0');
            state <= start;
            bcds_out_reg <= (others => '0');
            shift_counter <= 0;
        elsif rising_edge(clk) then
            binary <= binary_next;
            bcds <= bcds_next;
            state <= state_next;
            bcds_out_reg <= bcds_out_reg_next;
            shift_counter <= shift_counter_next;
        end if;
    end process;
 
    convert: process(clk,state, binary, binary_in, bcds, bcds_reg, shift_counter)
    begin
        state_next <= state;
        bcds_next <= bcds;
        binary_next <= binary;
        shift_counter_next <= shift_counter;
 
        case state is
            when start =>
                state_next <= shift;
                binary_next <= binary_in;
                bcds_next <= (others => '0');
                shift_counter_next <= 0;
            when shift =>
                if shift_counter = N then
                    state_next <= done;
                else
                    binary_next <= binary(N-2 downto 0) & 'L';
                    bcds_next <= bcds_reg(10 downto 0) & binary(N-1);
                    shift_counter_next <= shift_counter + 1;
                end if;
            when done =>
                state_next <= start;
        end case;
    end process;
 
    bcds_reg(7 downto 4) <= bcds(7 downto 4) + 3 when bcds(7 downto 4) > 4 else
                            bcds(7 downto 4);
    bcds_reg(3 downto 0) <= bcds(3 downto 0) + 3 when bcds(3 downto 0) > 4 else
                            bcds(3 downto 0);
 
    bcds_out_reg_next <= bcds when state = done else
                         bcds_out_reg;
 
    sig_bcd1 <= bcds_out_reg(7 downto 4);
    sig_bcd0 <= bcds_out_reg(3 downto 0);
    
    bcd0 <= sig_bcd0;
    bcd1 <= sig_bcd1;
    
 
end behaviour;

