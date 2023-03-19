----------------------------------------------------------
--
--! @title Clock enable
--! @author Tomas Fryza
--! Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
--!
--! @copyright (c) 2019 Tomas Fryza
--! This work is licensed under the terms of the MIT license
--!
--! Generates clock enable signal according to the number
--! of clock pulses `g_MAX`.
--
-- Hardware: Nexys A7-50T, xc7a50ticsg324-1L
-- Software: TerosHDL, Vivado 2020.2, EDA Playground
--
----------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all; -- Package for arithmetic operations

----------------------------------------------------------
-- Entity declaration for clock enable
----------------------------------------------------------

entity top is
  generic (
    g_MAX : natural := 5 --! Number of clk pulses to generate one enable signal period
  );                       -- Note that there IS a semicolon between generic and port sections
  port (
    CLK100MHZ : in    std_logic; --! Main clock
    SW : in     std_logic_vector(1 downto 0);  --! Counter direction
    LED1: out std_logic_vector(3 downto 0);
    LED2: out std_logic_vector(11 downto 0);
    CA : out    std_logic; --! Cathod A
    CB : out    std_logic; --! Cathod B
    CC : out    std_logic; --! Cathod C
    CD : out    std_logic; --! Cathod D
    CE : out    std_logic; --! Cathod E
    CF : out    std_logic; --! Cathod F
    CG : out    std_logic; --! Cathod G
    AN : out    std_logic_vector(7 downto 0); --! Common anode signals to individual displays
    BTNC : in std_logic  --! Synchronous reset
  );
end entity top;
------------------------------------------------------------------------
-- Architecture body for top level
------------------------------------------------------------------------
architecture Behavioral of top is

  -- Internal clock enable
  signal s_en_250ms : std_logic;
  -- Internal counter
  signal s_cnt_4bit : std_logic_vector(3 downto 0);
  -- Internal clock enable for 10-bit counter
  signal s_en_10ms : std_logic;
  signal s_cnt_12bit : std_logic_vector(11 downto 0);

begin

  --------------------------------------------------------------------
  -- Instance (copy) of clock_enable entity
  clk_en0 : entity work.clock_enable
      generic map(
          g_MAX => 25000000   -- 250ms
      )
      port map(
          clk => CLK100MHZ, --! Main clock
          rst => BTNC, --! High-active synchronous reset
          ce  => s_en_250ms
      );

  clk_en1 : entity work.clock_enable
      generic map(
          g_MAX => 1000000      -- 10ms
      )
      port map(
          clk => CLK100MHZ, --! Main clock
          rst => BTNC, --! High-active synchronous reset
          ce  => s_en_10ms
      );
  

  --------------------------------------------------------------------
  -- Instance (copy) of cnt_up_down entity
  bin_cnt0 : entity work.cnt_up_down
    generic map(
    g_CNT_WIDTH => 4 --! Default number of counter bits
  )
  port map (
    clk    => CLK100MHZ, --! Main clock
    rst    => BTNC, --! Synchronous reset
    en     => s_en_250ms, --! Enable input
    cnt_up => SW(0), --! Direction of the counter
    cnt    => LED1
  );
  
  bin_cnt1 : entity work.cnt_up_down_12bit
    generic map(
    g_CNT_WIDTH => 12 --! Default number of counter bits
  )
  port map (
    clk    => CLK100MHZ, --! Main clock
    rst    => BTNC, --! Synchronous reset
    en     => s_en_10ms, --! Enable input
    cnt_up => SW(1), --! Direction of the counter
    cnt    => s_cnt_12bit
  );

  --------------------------------------------------------------------
  -- Instance (copy) of hex_7seg entity
  hex2seg : entity work.hex_7seg
      port map(
          blank  => BTNC,
          hex    => s_cnt_4bit,
          seg(6) => CA,
          seg(5) => CB,
          seg(4) => CC,
          seg(3) => CD,
          seg(2) => CE,
          seg(1) => CF,
          seg(0) => CG
      );

  -- Connect one common anode to 3.3V
  AN <= b"1111_1110";
  
  LED2 <= s_cnt_12bit;
end architecture Behavioral;