LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY pwm_generator IS
  PORT(
    clk     : IN  std_logic;
    reset   : IN  std_logic;
    Outport : OUT std_logic
  );
END pwm_generator;

ARCHITECTURE rtl OF pwm_generator IS

  -- 100 MHz clock ? toggle every 0.5s ? 1 Hz blink
  CONSTANT MAX_COUNT : unsigned(25 downto 0) := to_unsigned(49999999, 26);

  SIGNAL counter  : unsigned(25 downto 0) := (others => '0');
  SIGNAL slow_clk : std_logic := '0';

BEGIN

  process(clk, reset)
  begin
    if reset = '1' then
      counter  <= (others => '0');
      slow_clk <= '0';

    elsif rising_edge(clk) then
      if counter = MAX_COUNT then
        counter  <= (others => '0');
        slow_clk <= not slow_clk;
      else
        counter <= counter + 1;
      end if;
    end if;
  end process;

  -- Drive LED
  Outport <= slow_clk;

END rtl;