------------------------------------------------------------
--
-- Testbench for 4-bit binary comparator.
-- Nexys A7-50T, xc7a50ticsg324-1L
-- TerosHDL, Vivado 2020.2
--
-- Copyright (c) 2020 Tomas Fryza
-- Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------

entity tb_mux_3bit_4to1 is
  -- Entity of testbench is always empty
end entity tb_mux_3bit_4to1;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------

architecture testbench of tb_mux_3bit_4to1 is

  -- Testbench local signals
  signal sig_a_i           : std_logic_vector(2 downto 0);
  signal sig_b_i           : std_logic_vector(2 downto 0);
  signal sig_c_i           : std_logic_vector(2 downto 0);
  signal sig_d_i           : std_logic_vector(2 downto 0);
  signal sig_sel_i        : std_logic_vector(1 downto 0);
  signal sig_y_o          : std_logic_vector(2 downto 0);


begin

  -- Connecting testbench signals with comparator_4bit
  -- entity (Unit Under Test)
  uut_mux_3bit_4to1 : entity work.mux_3bit_4to1
    port map (
      a_i           => sig_a_i,
      b_i           => sig_b_i,
      c_i           => sig_c_i,
      d_i           => sig_d_i,
      sel_i         => sig_sel_i,
      y_o           => sig_y_o
    );

  --------------------------------------------------------
  -- Data generation process
  --------------------------------------------------------
  p_stimulus : process is
  begin

    -- Report a note at the beginning of stimulus process
    report "Stimulus process started";
    sig_a_i <= "000";
    sig_b_i <= "001";
    sig_c_i <= "010";
    sig_d_i <= "011";
    sig_sel_i <= "00";
    
    wait for 100 ns;
    -- ... and its expected outputs
    assert (sig_y_o = "000")
      -- If false, then report an error
      -- If true, then do not report anything
      report "Input combination y=a FAILED"
      severity error;
      
    sig_sel_i <= "01";
    assert (sig_y_o = "001")
      -- If false, then report an error
      -- If true, then do not report anything
        report "Input combination y=b FAILED"
        severity error; 
    wait for 100 ns;
    
    sig_sel_i <= "10";
    assert (sig_y_o = "010")
      -- If false, then report an error
      -- If true, then do not report anything
        report "Input combination y=c FAILED"
        severity error; 
    wait for 100 ns;
        

    
    sig_sel_i <= "11";
    
    assert (sig_y_o = "011")
      -- If false, then report an error
      -- If true, then do not report anything
        report "Input combination y=d FAILED"
        severity error; 
    wait for 100 ns;
    
        
   
    sig_sel_i <= "11";
    
    assert (sig_y_o = "011")
      -- If false, then report an error
      -- If true, then do not report anything
        report "Input combination y=d FAILED"
        severity error; 
    wait for 100 ns;
    
    sig_sel_i <= "10";
    assert (sig_y_o = "010")
      -- If false, then report an error
      -- If true, then do not report anything
        report "Input combination y=c FAILED"
        severity error; 
    wait for 100 ns;
    
    sig_sel_i <= "01";
    assert (sig_y_o = "001")
      -- If false, then report an error
      -- If true, then do not report anything
        report "Input combination y=b FAILED"
        severity error; 
    wait for 100 ns;  
    
    assert (sig_y_o = "000")
      -- If false, then report an error
      -- If true, then do not report anything
      report "Input combination y=a FAILED"
      severity error;     

    -- Report a note at the end of stimulus process
    report "Stimulus process finished";

    

    wait; -- Data generation process is suspended forever

  end process p_stimulus;

end architecture testbench;