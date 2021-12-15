entity pl_3and is
    port(
        a: in bit;
        b: in bit;
        c: in bit;
        s: out bit
    );
end;


architecture b of pl_3and is
begin
    s <= (a and b) and c;
end;
