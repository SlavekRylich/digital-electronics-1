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
           LED : out STD_LOGIC_VECTOR (5 downto 0);
           SW : in STD_LOGIC_VECTOR (15 downto 0));
end top;

architecture Behavioral of top is

signal sig_output : std_logic_vector(5 downto 0);
begin
statemachine: entity work.statemachine
port map
(
         clk => CLK100MHZ,         --: in STD_LOGIC;
         rst => BTNC,        --: in STD_LOGIC;
         set_run => SW(5 downto 0), --: in STD_LOGIC_VECTOR (3 downto 0);
         set_pause => SW(11 downto 6),   --: in STD_LOGIC_VECTOR (5 downto 0);
         set_round => SW(15 downto 12),   --: in STD_LOGIC_VECTOR (5 downto 0);
         output => sig_output     --: out STD_LOGIC_VECTOR (5 downto 0)
);

--bcd_converter0: entity work.bin_to_BCD
--port map 
--(
--    clk         =>  CLK100MHZ,
--    reset       =>  BTNC,
--    binary_in   =>  sig_output
--);

LED <= sig_output;

end Behavioral;