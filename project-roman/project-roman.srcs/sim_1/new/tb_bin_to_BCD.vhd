LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_bcd IS
END tb_bcd;
 
ARCHITECTURE behavior OF tb_bcd IS
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT binary_bcd
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         binary_in : IN  std_logic_vector(15 downto 0);
         bcd0 : OUT  std_logic_vector(3 downto 0);
         bcd1 : OUT  std_logic_vector(3 downto 0);
         bcd2 : OUT  std_logic_vector(3 downto 0);
         bcd3 : OUT  std_logic_vector(3 downto 0);
         bcd4 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
 
   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal binary_in : std_logic_vector(15 downto 0) := (others => '0');
 
    --Outputs
   signal bcd0 : std_logic_vector(3 downto 0);
   signal bcd1 : std_logic_vector(3 downto 0);
   signal bcd2 : std_logic_vector(3 downto 0);
   signal bcd3 : std_logic_vector(3 downto 0);
   signal bcd4 : std_logic_vector(3 downto 0);
 
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: binary_bcd PORT MAP (
          clk => clk,
          reset => reset,
          binary_in => binary_in,
          bcd0 => bcd0,
          bcd1 => bcd1,
          bcd2 => bcd2,
          bcd3 => bcd3,
          bcd4 => bcd4
        );
 
   -- Clock process definitions
   clk_process :process
   begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin
      -- hold reset state for 100 ns.
        reset <= '1';
      wait for 100 ns;
        reset <= '0';
 
        binary_in <= "0000000000001111";
      wait for 200 ns;
 
        binary_in <= "0000000001001111";
      wait for 200 ns;
 
        binary_in <= "0000000001111111";
      wait for 200 ns;
 
        binary_in <= "0000111101001111";
      wait for 2000 ns;
 
    end process;
 
END;
