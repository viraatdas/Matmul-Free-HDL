library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_ternary_matrix_mult is
end tb_ternary_matrix_mult;

architecture Behavioral of tb_ternary_matrix_mult is
    signal clk : STD_LOGIC := '0';
    signal a : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal b : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal result : STD_LOGIC_VECTOR(7 downto 0);

    component ternary_matrix_mult
        Port ( clk : in STD_LOGIC;
               a : in STD_LOGIC_VECTOR(7 downto 0);
               b : in STD_LOGIC_VECTOR(7 downto 0);
               result : out STD_LOGIC_VECTOR(7 downto 0));
    end component;

begin
    uut: ternary_matrix_mult Port map (
        clk => clk,
        a => a,
        b => b,
        result => result
    );

    clk <= not clk after 10 ns;

    process
    begin
        -- Test case 1
        a <= "00000001"; b <= "00000001"; wait for 20 ns;
        -- Test case 2
        a <= "00000010"; b <= "00000010"; wait for 20 ns;
        -- Additional test cases as needed
        wait;
    end process;
end Behavioral;

