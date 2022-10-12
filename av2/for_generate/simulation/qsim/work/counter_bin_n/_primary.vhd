library verilog;
use verilog.vl_types.all;
entity counter_bin_n is
    port(
        q               : out    vl_logic_vector(0 to 3);
        in_1            : in     vl_logic
    );
end counter_bin_n;
