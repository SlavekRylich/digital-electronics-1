----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2023 01:12:30 PM
-- Design Name: 
-- Module Name: top - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( CLK100MHZ : in STD_LOGIC;
           BTNC : in STD_LOGIC;
          
           SW : in STD_LOGIC_VECTOR (15 downto 0);
           
         CA : out STD_LOGIC;
         CB : out STD_LOGIC;
         CC : out STD_LOGIC;
         CD : out STD_LOGIC;
         CE : out STD_LOGIC;
         CF : out STD_LOGIC;
         CG : out STD_LOGIC;
         --DP : out STD_LOGIC;
         AN : out STD_LOGIC_VECTOR (7 downto 0)
         
         );
end top;

architecture Behavioral of top is

signal sig_output : std_logic_vector(5 downto 0);
signal sig_time_units : std_logic_vector(3 downto 0);
signal sig_time_tens : std_logic_vector(3 downto 0);
signal sig_round_units : std_logic_vector(3 downto 0);
signal sig_round_tens : std_logic_vector(3 downto 0);
signal sig_round : std_logic_vector(3 downto 0);
begin
statemachine: entity work.statemachine
port map
(
         clk => CLK100MHZ,         --: in STD_LOGIC;
         rst => BTNC,        --: in STD_LOGIC;
         set_run => SW(5 downto 0), --: in STD_LOGIC_VECTOR (3 downto 0);
         set_pause => SW(11 downto 6),   --: in STD_LOGIC_VECTOR (5 downto 0);
         set_round => SW(15 downto 12),   --: in STD_LOGIC_VECTOR (5 downto 0);
         output => sig_output,     --: out STD_LOGIC_VECTOR (5 downto 0)
         round  => sig_round
         
         
);


bcd_converter0: entity work.bin_to_BCD          -- for time
port map 
(
    clk         =>  CLK100MHZ,
    reset       =>  BTNC,
    binary_in   =>  sig_output,
    bcd0        =>  sig_time_units,
    bcd1        =>  sig_time_tens
    
);
bcd_converter1: entity work.bin_to_BCD          -- for round
generic map (
    N => 4
)
port map 
(   
    clk         =>  CLK100MHZ,
    reset       =>  BTNC,
    binary_in   =>  sig_round,
    bcd0        =>  sig_round_units,
    bcd1        =>  sig_round_tens
    
);

drv_7seg: entity work.driver_7seg_4digits_for_timer
 port map 
 (  
    clk     =>      CLK100MHZ,
    rst     =>      BTNC,
    data0    =>     sig_time_units,
    data1    =>     sig_time_tens,
    data2    =>     sig_round_units,
    data3    =>     sig_round_tens,
    
       seg(6)   => CA,
       seg(5)   => CB,
       seg(4)   => CC,
       seg(3)   => CD,
       seg(2)   => CE,
       seg(1)   => CF,
       seg(0)   => CG,
      

       dig(3 downto 0) => AN(3 downto 0)
 );
 
sig_round <= sig_round;
AN(7 downto 4) <= b"1111";
end Behavioral;