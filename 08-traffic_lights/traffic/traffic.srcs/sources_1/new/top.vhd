----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2023 13:59:27
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
    Port ( CLK100MHZ : in STD_LOGIC; --! Main clock
           LED16_R : out STD_LOGIC;  --! Red1
           LED16_G : out STD_LOGIC;  --! Green1
           LED16_B : out STD_LOGIC;  --! Blue1
           LED17_R : out STD_LOGIC;  --! Red2
           LED17_G : out STD_LOGIC;  --! Green2
           LED17_B : out STD_LOGIC;  --! Blue2
           BTNC : in STD_LOGIC;     --! Synchronous reset
           BTND : in STD_LOGIC);    --! Speed button
end top;

------------------------------------------------------------
-- Architecture body for top level
------------------------------------------------------------
architecture Behavioral of top is

begin
    --------------------------------------------------------
    -- Instance (copy) of tlc entity
    tlc : entity work.tlc
        port map(
            clk      => CLK100MHZ,
            rst      => BTNC,
            speed_button => BTND,
            south(2) => LED16_R,
            south(1) => LED16_G,
            south(0) => LED16_B,
            west(2)  => LED17_R,
            west(1)  => LED17_G,
            west(0)  => LED17_B

        );

end architecture Behavioral;