----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2023 01:25:27 PM
-- Design Name: 
-- Module Name: statemachine - Behavioral
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
  use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity statemachine is
    Port 
    (
         clk : in STD_LOGIC;
         rst : in STD_LOGIC;
         set_round : in STD_LOGIC_VECTOR (3 downto 0);
         set_run : in STD_LOGIC_VECTOR (5 downto 0);
         set_pause : in STD_LOGIC_VECTOR (5 downto 0);
         output : out STD_LOGIC_VECTOR (5 downto 0);
         round : out std_logic_vector (3 downto 0)
       
    );
end statemachine;

architecture Behavioral of statemachine is
type t_state is 
  (
    RUN,
    PAUSE,
    SET,
    FINISH
  );

signal sig_en : std_logic;
 signal sig_state : t_state;  
 signal sig_cnt_round : unsigned(3 downto 0);--unsigned(3 downto 0);
 signal sig_cnt_run : integer;--unsigned(5 downto 0);
 signal sig_cnt_pause : integer;--unsigned(5 downto 0);
 signal sig_output : std_logic_vector(5 downto 0);
 --Convert 10s input to number
 function count_ones(s : std_logic_vector) return integer is
  variable temp : integer := 0;
    begin
        for i in s'range loop
            if s(i) = '1' then temp := temp + 1; 
            end if;
        end loop;
        return temp;
    end function count_ones;
 
begin

 clk_en0 : entity work.clock_enable
    generic map 
    (
      -- FOR SIMULATION, KEEP THIS VALUE TO 1
      -- FOR IMPLEMENTATION, CALCULATE VALUE: 250 ms / (1/100 MHz)
      -- 1   @ 10 ns
      -- 25000000 @ 250 ms
      -- 100000000 @ 1 s
      g_MAX => 100000000
      --g_MAX => 100      -- simulation
    )
    port map 
    (
      clk => clk,
      rst => rst,
      ce  => sig_en
    );

    
 p_states : process (clk) is
  begin
  if (rising_edge(clk)) 
    then
      if (rst = '1') 
      then
        sig_state <= SET;
       
      elsif (sig_en = '1')
      then
        case sig_state is
            when RUN =>
                if (sig_cnt_run > 0)
                then
                    sig_cnt_run <= sig_cnt_run - 1;
                else
                    sig_state <= PAUSE;
                    sig_cnt_run <= count_ones(set_run)*10;
                    
                end if;
            when PAUSE =>
            if (sig_cnt_pause > 0)
                then
                    sig_cnt_pause <= sig_cnt_pause - 1;
                else
                    sig_state <= RUN;
                    sig_cnt_pause <= count_ones(set_pause)*10;
                    if(sig_cnt_Round > 0) then
                        sig_cnt_round <= sig_cnt_round - 1;
                    else
                        sig_state <= FINISH;
                    end if;
                end if;
            when SET => 
             sig_cnt_round <= unsigned(set_round);
             sig_cnt_run <= count_ones(set_run)*10;
             sig_cnt_pause <= count_ones(set_pause)*10;
             sig_state <= RUN;
            when FINISH =>
            
        end case;
      end if;
   end if;
  end process p_states;
    p_output_fsm : process (sig_state,clk) is
  begin

    case sig_state is
      when RUN =>
        sig_output <= std_logic_vector(to_unsigned(sig_cnt_run, output'length));
        round <= std_logic_vector(sig_cnt_round);
        output <= sig_output;
      when PAUSE =>
      sig_output <= std_logic_vector(to_unsigned(sig_cnt_pause, output'length));
      round <= std_logic_vector(sig_cnt_round);
        output <= sig_output;
      when SET =>
        output <= "000000";
      when FINISH =>   
        output <= "000000";          
      when others =>
        output <= "111111"; 
    end case;
    
    
  end process p_output_fsm;
  
end Behavioral;