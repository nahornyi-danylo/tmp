library verilog;
use verilog.vl_types.all;
entity stimul is
    port(
        EN              : out    vl_logic;
        addr            : out    vl_logic_vector(2 downto 0);
        S               : out    vl_logic;
        clk             : in     vl_logic
    );
end stimul;
