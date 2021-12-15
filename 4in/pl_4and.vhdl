entity pl_4and is
    port(
        a: in bit;
        b: in bit;
        c: in bit;
        d: in bit;
        s: out bit
    );
end;


architecture b of pl_4and is
begin
    s <= (a and b) and (c and d);
end;
