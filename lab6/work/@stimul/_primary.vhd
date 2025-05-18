library verilog;
use verilog.vl_types.all;
entity Stimul is
    port(
        A               : out    vl_logic_vector(4 downto 0);
        B               : out    vl_logic_vector(4 downto 0);
        Ci              : out    vl_logic;
        clk             : in     vl_logic
    );
end Stimul;
