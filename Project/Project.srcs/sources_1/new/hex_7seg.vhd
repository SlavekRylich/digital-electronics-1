----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.03.2023 13:15:27
-- Design Name: 
-- Module Name: hex_7seg - Behavioral
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

entity hex_7seg is
    Port ( blank : in STD_LOGIC;                        --! Blank (clear) display 
           hex : in STD_LOGIC_VECTOR (5 downto 0);      --! Input binary data
           seg : out STD_LOGIC_VECTOR (6 downto 0));    --! Cathode values in the order A, B, C, D, E, F, G
end hex_7seg;

architecture Behavioral of hex_7seg is
-- signals

begin

  --------------------------------------------------------
  -- p_7seg_decoder:
  -- A combinational process for 7-segment display (Common
  -- Anode) decoder. Any time "hex" or "blank" is changed,
  -- the process is "executed". Output pin seg(6) controls
  -- segment A, seg(5) segment B, etc.
  --     segment A
  --      | segment B
  --      |  | segment C
  --      +-+|  |   ...   segment G
  --        ||+-+          |
  --        |||            |
  -- seg = "0000001"-------+
  --
  -- Display is clear/blank if signal blank = 1.
  --------------------------------------------------------

  p_7seg_decoder : process (blank, hex) is

  begin

    if (blank = '1') then
      seg <= "1111111";     -- Blanking display
    else

      case hex is

        when "000000" =>

          seg <= "0000001"; -- 0

        when "000001" =>

          seg <= "1001111"; -- 1

        
         when "000010" =>

          seg <= "0010010"; -- 2

        when "000011" =>

          seg <= "0000110"; -- 3
          
         when "000100" =>

          seg <= "1001100"; -- 4
          
         when "000101" =>

          seg <= "0100100"; -- 5
          
         when "000110" =>

          seg <= "0100000"; -- 6
          
         when "000111" =>

          seg <= "0001111"; -- 6

        when "001000" =>

          seg <= "0000000"; -- 8

        -- WRITE YOUR CODE HERE
        -- 9, A, b, C, d
        
        when "001001" =>

          seg <= "0000100"; -- 9
          
        
        when "1010" =>

          seg <= "0001000"; -- A
          
        when "1011" =>

          seg <= "1100000"; -- b
          
        when "1100" =>

          seg <= "0110001"; -- C
          
        when "1101" =>

          seg <= "1000010"; -- d
          
        when "1110" =>

          seg <= "0110000"; -- E

        when others =>

          seg <= "0111000"; -- F

      end case;

    end if;
    
  end process p_7seg_decoder;
  
end Behavioral;
