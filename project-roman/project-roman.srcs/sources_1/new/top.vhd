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

begin
statemachine: entity work.statemachine
port map
(
         clk => CLK100MHZ,         --: in STD_LOGIC;
         rst => BTNC,        --: in STD_LOGIC;
         set_run => SW(5 downto 0), --: in STD_LOGIC_VECTOR (3 downto 0);
         set_pause => SW(11 downto 6),   --: in STD_LOGIC_VECTOR (5 downto 0);
         set_round => SW(15 downto 12),   --: in STD_LOGIC_VECTOR (5 downto 0);
         output => LED     --: out STD_LOGIC_VECTOR (5 downto 0)
);
end Behavioral;