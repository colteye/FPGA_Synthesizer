library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity key is
    Port ( clk : in STD_LOGIC;
           freq : in integer range 0 to 99999999;
           key : in STD_LOGIC;
           pressed : out integer range 0 to 1;
           led : out STD_LOGIC;
           output : out STD_LOGIC);
end key;

architecture Behavioral of key is
    signal counter : integer range 0 to 99999999;
    signal current_out : STD_LOGIC := '0';
    signal inverted_out : STD_LOGIC := '1';
    signal count_enable : STD_LOGIC := '0';
begin

led <= key;

output <= count_enable XOR current_out;
inverted_out <= NOT current_out;

process(clk, counter) begin
if rising_edge(clk) then 

    if (key = '1') then pressed <= 1;
    else pressed <= 0; end if;
    
    counter <= counter + 1; 
    
    if (counter = freq) then counter <= 0;
    
        if (key = '1') then count_enable <= NOT count_enable;
        else count_enable <= '0'; end if;
   
    end if;
    
end if;
end process;

end Behavioral;
