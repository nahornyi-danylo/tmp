library verilog;
use verilog.vl_types.all;
entity demultiplexor is
    port(
        EN              : in     vl_logic;
        addr            : in     vl_logic_vector(2 downto 0);
        S               : in     vl_logic;
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end demultiplexor;
