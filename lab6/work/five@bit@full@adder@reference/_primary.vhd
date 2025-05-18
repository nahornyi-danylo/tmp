library verilog;
use verilog.vl_types.all;
entity fiveBitFullAdderReference is
    port(
        A               : in     vl_logic_vector(4 downto 0);
        B               : in     vl_logic_vector(4 downto 0);
        Ci              : in     vl_logic;
        Co              : out    vl_logic;
        S               : out    vl_logic_vector(4 downto 0)
    );
end fiveBitFullAdderReference;
