library verilog;
use verilog.vl_types.all;
entity ALU_final_vlg_check_tst is
    port(
        Display0        : in     vl_logic_vector(6 downto 0);
        Display1        : in     vl_logic_vector(6 downto 0);
        Display2        : in     vl_logic_vector(6 downto 0);
        Display3        : in     vl_logic_vector(6 downto 0);
        NZVC            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALU_final_vlg_check_tst;
