entity pl_4in_tb is
end;


architecture tb of pl_4in_tb is
    component pl_4and is
        port(
            a: in bit;
            b: in bit;
            c: in bit;
            d: in bit;
            s: out bit
        );
    end component;

    component pl_4or is
        port(
            a: in bit;
            b: in bit;
            c: in bit;
            d: in bit;
            s: out bit
        );
    end component;
    
    signal sa, sb, sc, sd: bit;
    signal sand, sor: bit;

begin
    u_pl_4and: pl_4and port map(sa, sb, sc, sd, sand);
    u_pl_4or: pl_4or port map(sa, sb, sc, sd, sor);

    u_tb: process
    begin
        sa <= '0';
        sb <= '0';
        sc <= '0';
        sd <= '0';
        wait for 10 ns;

        sa <= '0';
        sb <= '0';
        sc <= '0';
        sd <= '1';
        wait for 10 ns;

        sa <= '0';
        sb <= '0';
        sc <= '1';
        sd <= '0';
        wait for 10 ns;

        sa <= '0';
        sb <= '0';
        sc <= '1';
        sd <= '1';
        wait for 10 ns;

        sa <= '0';
        sb <= '1';
        sc <= '0';
        sd <= '0';
        wait for 10 ns;

        sa <= '0';
        sb <= '1';
        sc <= '0';
        sd <= '1';
        wait for 10 ns;

        sa <= '0';
        sb <= '1';
        sc <= '1';
        sd <= '0';
        wait for 10 ns;

        sa <= '0';
        sb <= '1';
        sc <= '1';
        sd <= '1';
        wait for 10 ns;

        sa <= '1';
        sb <= '0';
        sc <= '0';
        sd <= '0';
        wait for 10 ns;

        sa <= '1';
        sb <= '0';
        sc <= '0';
        sd <= '1';
        wait for 10 ns;

        sa <= '1';
        sb <= '0';
        sc <= '1';
        sd <= '0';
        wait for 10 ns;

        sa <= '1';
        sb <= '0';
        sc <= '1';
        sd <= '1';
        wait for 10 ns;

        sa <= '1';
        sb <= '1';
        sc <= '0';
        sd <= '0';
        wait for 10 ns;

        sa <= '1';
        sb <= '1';
        sc <= '0';
        sd <= '1';
        wait for 10 ns;

        sa <= '1';
        sb <= '1';
        sc <= '1';
        sd <= '0';
        wait for 10 ns;

        sa <= '1';
        sb <= '1';
        sc <= '1';
        sd <= '1';
        wait for 10 ns;

        wait;
    end process;
end;
