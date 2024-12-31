library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rms_norm is
    Port ( clk : in STD_LOGIC;
           vector_in : in STD_LOGIC_VECTOR(31 downto 0); -- Example input vector
           norm_result : out STD_LOGIC_VECTOR(31 downto 0)); -- Normalized result
end rms_norm;

architecture Behavioral of rms_norm is
    signal sum_sq : integer := 0;
    signal rms : integer := 0;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            -- Calculate sum of squares
            sum_sq <= sum_sq + to_integer(unsigned(vector_in)) ** 2;
            -- Calculate RMS
            rms <= integer(sqrt(real(sum_sq / 8))); -- Assuming 8 elements for simplicity
            norm_result <= std_logic_vector(to_unsigned(rms, 32));
        end if;
    end process;
end Behavioral;

