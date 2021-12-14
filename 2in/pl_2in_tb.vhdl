


entity pl_2in_tb is end;


architecture tb of pl_2in_tb is
    component pl_2and is
        port(
            a: in bit;
            b: in bit;
            s: out bit
        );
    end component;

    component pl_2nand is
        port(
            a: in bit;
            b: in bit;
            s: out bit
        );
    end component;

     component pl_2nor is
        port(
            a: in bit;
            b: in bit;
            s: out bit
        );
    end component;   
 
    component pl_2xor is
        port(
            a: in bit;
            b: in bit;
            s: out bit
        );
    end component;

    component pl_2xnor is
        port(
            a: in bit;
            b: in bit;
            s: out bit
        );
    end component;

    -- nao misturando in e out
    signal sa, sb: bit;
    signal sand, snand, snor, sxor, sxnor: bit;

begin
    -- instancia posicional
    u_pl_2and_p : pl_2and port map(sa, sb, sand);
    u_pl_2nand_p : pl_2nand port map(sa, sb, snand);
    u_pl_2nor_p : pl_2nor port map(sa, sb, snor);
    u_pl_2xor_p : pl_2xor port map(sa, sb, sxor);
    u_pl_2xnor_p : pl_2xnor port map(sa, sb, sxnor);

    -- explicita
    -- u_pl_or_win_e: pl_or_2in port map(B => sB, s => sOR, A => sA);
    
    u_tb : process
    begin
        sa <= '0';
        sb <= '0';
        wait for 10 ns;
        
        sa <= '0';
        sb <= '1';
        wait for 10 ns;
        
        sa <= '1';
        sb <= '0';
        wait for 10 ns;

        sa <= '1';
        sb <= '1';
        wait for 10 ns;

        wait;
    end process u_tb;
end tb;
