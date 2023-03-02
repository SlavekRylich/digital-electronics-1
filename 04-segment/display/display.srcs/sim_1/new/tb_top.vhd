----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.03.2023 14:39:36
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
--  Port ( );
end tb_top;

architecture Behavioral of tb_top is
 signal sig_a_i           : std_logic_vector(2 downto 0);
  signal sig_b_i           : std_logic_vector(2 downto 0);
  signal sig_c_i           : std_logic_vector(2 downto 0);
  signal sig_d_i           : std_logic_vector(2 downto 0);
  signal sig_sel_i        : std_logic_vector(1 downto 0);
  signal SW-          : std_logic_vector(2 downto 0);

begin

report "Stimulus process started";

        -- First test case
        SW <= "0000"; wait for 50 ns;
        assert (LED(4) = '0')
        report "LED(4) indicator FAILED" severity error;


        -- WRITE OTHER TEST CASES HERE


        report "Stimulus process finished";
        wait;
    end process p_stimulus;

end Behavioral;
