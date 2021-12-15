entity pl_4or is
    port(
        a: in bit;
        b: in bit;
        c: in bit;
        d: in bit;
        s: out bit
    );
end;


architecture b of pl_4or is
begin
    s <= (a or b) or (c or d);
end;
