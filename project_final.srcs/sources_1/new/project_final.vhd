package arrays is
     type counters is array(11 downto 0) OF integer range 0 to 99999999;
     type pressed is array(11 downto 0) OF integer range 0 to 1;
end package arrays;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all; 
use work.arrays.ALL;

entity project_final is
    Generic 
    ( frequencies : counters := ( 90192, 80354, 67568, 60196, 53630, 95558, 85132, 75844, 71586, 63776, 56818, 50620) );
    Port 
    ( clk : in STD_LOGIC;
    
      octave_up : in STD_LOGIC;
      octave_dn : in STD_LOGIC;
      
      keys : in STD_LOGIC_VECTOR(11 downto 0);
      led : out STD_LOGIC_VECTOR(11 downto 0);
      sout : out STD_LOGIC_VECTOR(11 downto 0));
    end project_final;

architecture Behavioral of project_final is

    Component key
    Port ( clk : in STD_LOGIC;
           freq : in integer range 0 to 99999999;
           key : in STD_LOGIC;
           pressed : out integer range 0 to 1;
           led : out STD_LOGIC;
           output : out STD_LOGIC);
    END Component;

    signal cout : STD_LOGIC_VECTOR(11 downto 0);
    signal freqs : counters := frequencies;
    signal octave : integer range 0 to 6 := 4;
    
    signal keys_pressed : integer range 0 to 12;
    signal p : pressed;
    
    type statetype is (idle, up, down);
    signal state : statetype := idle;

begin

    key0 : key port map(clk => clk, freq => freqs(0), key => keys(0), pressed => p(0), led => led(0), output => cout(0));
    key1 : key port map(clk => clk, freq => freqs(1), key => keys(1), pressed => p(1), led => led(1), output => cout(1));
    key2 : key port map(clk => clk, freq => freqs(2), key => keys(2), pressed => p(2), led => led(2), output => cout(2));
    key3 : key port map(clk => clk, freq => freqs(3), key => keys(3), pressed => p(3), led => led(3), output => cout(3));
    key4 : key port map(clk => clk, freq => freqs(4), key => keys(4), pressed => p(4), led => led(4), output => cout(4)); 
    key5 : key port map(clk => clk, freq => freqs(5), key => keys(5), pressed => p(5), led => led(5), output => cout(5));
    key6 : key port map(clk => clk, freq => freqs(6), key => keys(6), pressed => p(6), led => led(6), output => cout(6));
    key7 : key port map(clk => clk, freq => freqs(7), key => keys(7), pressed => p(7), led => led(7), output => cout(7));
    key8 : key port map(clk => clk, freq => freqs(8), key => keys(8), pressed => p(8), led => led(8), output => cout(8));
    key9 : key port map(clk => clk, freq => freqs(9), key => keys(9), pressed => p(9), led => led(9), output => cout(9));
    key10 : key port map(clk => clk, freq => freqs(10), key => keys(10), pressed => p(10), led => led(10), output => cout(10));
    key11 : key port map(clk => clk, freq => freqs(11), key => keys(11), pressed => p(11), led => led(11), output => cout(11));

    
process(clk) begin
    if rising_edge(clk) then
        keys_pressed <= p(0) + p(1) + p(2) + p(3) + p(4) + p(5) + p(6) + p(7) + p(8) + p(9) + p(10) + p(11);

        case (keys_pressed) is
        when 1 =>
            sout <= (others => cout(0) OR cout(1) OR cout(2) OR cout(3) OR cout(4) OR 
                     cout(5) OR cout(6) OR cout(7) OR cout(8) OR cout(9) OR cout(10) OR 
                     cout(11));
        when 2 =>
            sout(5 downto 0) <= (others => cout(0) OR cout(1) OR cout(2) OR cout(3) OR cout(4) OR cout(5));
            sout(11 downto 6) <= (others => cout(6) OR cout(7) OR cout(8) OR cout(9) OR cout(10) OR cout(11));
        when 3 =>
            sout(3 downto 0) <= (others => cout(0) OR cout(1) OR cout(2) OR cout(3));
            sout(7 downto 4) <= (others => cout(4) OR cout(5) OR cout(6) OR cout(7));
            sout(11 downto 8) <= (others => cout(8) OR cout(9) OR cout(10) OR cout(11));
        when 4 =>
            sout(2 downto 0) <= (others => cout(0) OR cout(1) OR cout(2));
            sout(5 downto 3) <= (others => cout(3) OR cout(4) OR cout(5));
            sout(8 downto 6) <= (others => cout(6) OR cout(7) OR cout(8));
            sout(11 downto 9) <= (others => cout(9) OR cout(10) OR cout(11));
        when 5 =>
            sout(1 downto 0) <= (others => cout(0) OR cout(1));
            sout(4 downto 2) <= (others => cout(2) OR cout(3) OR cout(4));
            sout(6 downto 5) <= (others => cout(5) OR cout(6));
            sout(9 downto 7) <= (others => cout(7) OR cout(8) OR cout(9));
            sout(11 downto 10) <= (others => cout(10) OR cout(11));
        when 6 =>
            sout(1 downto 0) <= (others => cout(0) OR cout(1));
            sout(3 downto 2) <= (others => cout(2) OR cout(3));
            sout(5 downto 4) <= (others => cout(4) OR cout(5));
            sout(7 downto 6) <= (others => cout(6) OR cout(7));
            sout(9 downto 8) <= (others => cout(8) OR cout(9));
            sout(11 downto 10) <= (others => cout(10) OR cout(11));
        when 7 =>
            sout(1 downto 0) <= (others => cout(0) OR cout(1));
            sout(2) <= cout(2);
            sout(4 downto 3) <= (others => cout(3) OR cout(4));
            sout(6 downto 5) <= (others => cout(5) OR cout(6));
            sout(8 downto 7) <= (others => cout(7) OR cout(8));
            sout(9) <= cout(9);
            sout(11 downto 10) <= (others => cout(10) OR cout(11));
        when 8 =>
            sout(1 downto 0) <= (others => cout(0) OR cout(1));
            sout(3 downto 2) <=  cout(3 downto 2);
            sout(5 downto 4) <= (others => cout(4) OR cout(5));
            sout(7 downto 6) <= (others => cout(6) OR cout(7));
            sout(9 downto 8) <= cout(9 downto 8);
            sout(10 downto 11) <= (others => cout(10) OR cout(11));
        when 9 =>
            sout(1 downto 0) <= (others => cout(0) OR cout(1));
            sout(3 downto 2) <=  cout(3 downto 2);
            sout(5 downto 4) <= (others => cout(4) OR cout(5));
            sout(7 downto 6) <= cout(7 downto 6);
            sout(9 downto 8) <= (others => cout(8) OR cout(9));
            sout(11 downto 10) <= cout(11 downto 10);
        when 10 =>
            sout(3 downto 0) <= cout(3 downto 0);
            sout(5 downto 4) <= (others => cout(4) OR cout(5));
            sout(9 downto 6) <= cout(9 downto 6);
            sout(11 downto 10) <= (others => cout(10) OR cout(11));
        when 11 =>
            sout(9 downto 0) <= cout(9 downto 0);
            sout(11 downto 10) <= (others => cout(10) OR cout(11));
        when others =>
            sout <= cout;
        end case;

        case (state) is
        when idle =>
            if (octave_dn = '1' AND octave > 0) then 
                state <= down;
                octave <= octave - 1;
                freqs(0) <= freqs(0) + freqs(0);
                freqs(1) <= freqs(1) + freqs(1);
                freqs(2) <= freqs(2) + freqs(2);
                freqs(3) <= freqs(3) + freqs(3);
                freqs(4) <= freqs(4) + freqs(4);
                freqs(5) <= freqs(5) + freqs(5);
                freqs(6) <= freqs(6) + freqs(6);
                freqs(7) <= freqs(7) + freqs(7);
                freqs(8) <= freqs(8) + freqs(8);
                freqs(9) <= freqs(9) + freqs(9);
                freqs(10) <= freqs(10) + freqs(10);
                freqs(11) <= freqs(11) + freqs(11);
                
            elsif (octave_up = '1' AND octave < 6) then 
                state <= up;
                octave <= octave + 1;

                freqs(0) <= freqs(0) / 2;
                freqs(1) <= freqs(1) / 2;
                freqs(2) <= freqs(2) / 2;
                freqs(3) <= freqs(3) / 2;
                freqs(4) <= freqs(4) / 2;
                freqs(5) <= freqs(5) / 2;
                freqs(6) <= freqs(6) / 2;
                freqs(7) <= freqs(7) / 2;
                freqs(8) <= freqs(8) / 2;
                freqs(9) <= freqs(9) / 2;
                freqs(10) <= freqs(10) / 2;
                freqs(11) <= freqs(11) / 2;
            end if;
        when up =>
            if (octave_up = '0') then state <= idle;
            end if;
        when down =>
            if (octave_dn = '0') then state <= idle;
            end if;  
        end case;
     end if;
end process;
            
end Behavioral;
