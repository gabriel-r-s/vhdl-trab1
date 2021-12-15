entity pl_3in_tb is
end;


architecture tb of pl_3in_tb is
    component pl_3and is
        port(
            a: in bit;
            b: in bit;
            c: in bit;
            s: out bit
        );
    end component;


    component pl_3or is
        port(
            a: in bit;
            b: in bit;
            c: in bit;
            s: out bit
        );
    end component;

    signal sa, sb, sc: bit;
    signal sand, sor: bit;

begin
    u_pl_3and: pl_3and port map(sa, sb, sc, sand);
    u_pl_3or: pl_3or port map(sa, sb, sc, sor);

    
    u_tb: process
    begin
        sa <= '0';
        sb <= '0';
        sc <= '0';
        wait for 10 ns;

        sa <= '0';
        sb <= '0';
        sc <= '1';
        wait for 10 ns;

        sa <= '0';
        sb <= '1';
        sc <= '0';
        wait for 10 ns;

        sa <= '0';
        sb <= '1';
        sc <= '1';
        wait for 10 ns;

        sa <= '1';
        sb <= '0';
        sc <= '0';
        wait for 10 ns;

        sa <= '1';
        sb <= '0';
        sc <= '1';
        wait for 10 ns;

        sa <= '1';
        sb <= '1';
        sc <= '0';
        wait for 10 ns;

        sa <= '1';
        sb <= '1';
        sc <= '1';
        wait for 10 ns;

        wait;
    end process;
end;
