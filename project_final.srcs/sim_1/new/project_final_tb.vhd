-- Testbench created online at:
--   www.doulos.com/knowhow/perl/testbench_creation/
-- Copyright Doulos Ltd
-- SD, 03 November 2002

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use work.freq_counters.ALL;

entity project_final_tb is
end;

architecture bench of project_final_tb is

  component project_final
      Generic 
      ( frequency_max : counters := (90192, 80354, 67568, 60197, 53629, 95557, 85131, 75844, 71586, 63776, 56818, 50619));
      Port 
      ( clk : in STD_LOGIC;
        keys : in STD_LOGIC_VECTOR(11 downto 0);
        led : out STD_LOGIC_VECTOR(11 downto 0);
        speaker : out STD_LOGIC);
      end component;

  signal clk: STD_LOGIC := '0';
  signal keys: STD_LOGIC_VECTOR(11 downto 0);
  signal led: STD_LOGIC_VECTOR(11 downto 0);
  signal speaker: STD_LOGIC;
begin

  -- Insert values for generic parameters !!
  uut: project_final generic map ( frequency_max => (10, 20, 30, 40, 50, 10, 20, 30, 40, 50, 10, 20))
                        port map ( clk           => clk,
                                   keys          => keys,
                                   led           => led,
                                   speaker       => speaker );
                                   
clk <= not clk after 1ns;
  
stimulus: process
    begin
    
    keys <= "100010011101";
    wait for 100ns;
    
    end process;
end;
