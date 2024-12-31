library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ternary_matrix_mult is
    Port ( clk : in STD_LOGIC;
           a : in STD_LOGIC_VECTOR(7 downto 0); -- 8-bit input vector
           b : in STD_LOGIC_VECTOR(7 downto 0); -- 8-bit ternary weights
           result : out STD_LOGIC_VECTOR(7 downto 0)); -- 8-bit result
end ternary_matrix_mult;

architecture Behavioral of ternary_matrix_mult is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            result <= std_logic_vector(signed(a) * signed(b)); -- Simple multiplication
        end if;
    end process;
end Behavioral;

