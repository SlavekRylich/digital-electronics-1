----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.03.2023 13:45:06
-- Design Name: 
-- Module Name: t_ff_rst - Behavioral
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

entity t_ff_rst is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           t : in STD_LOGIC;
           q : out STD_LOGIC;
           q_bar : out STD_LOGIC);
end t_ff_rst;

architecture Behavioral of t_ff_rst is
    -- It must use this local signal instead of output ports
    -- because "out" ports cannot be read within the architecture
    signal s_q : std_logic;
begin
    --------------------------------------------------------
    -- p_t_ff_rst:
    -- T type flip-flop with a high-active synchro reset,
    -- rising-edge clk.
    -- q(n+1) = t./q(n) + /t.q(n)
    -- q(n+1) =  q(n) if t = 0 (no change)
    -- q(n+1) = /q(n) if t = 1 (inversion)
    --------------------------------------------------------
    p_t_ff_rst : process(clk)
    begin
        if rising_edge(clk) then

        -- WRITE YOUR CODE HERE
            if (rst = '1') then
                s_q <= '0';
            elsif (t = '0') then
                s_q <= s_q;
            else 
                s_q <= not s_q;
            end if;

        end if;
    end process p_t_ff_rst;

    -- Output ports are permanently connected to local signal
    q     <= s_q;
    q_bar <= not s_q;
end architecture Behavioral;
