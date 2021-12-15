entity pl_2and is
    port(
        a: in bit;
        b: in bit;
        s: out bit
    );
end;


architecture b of pl_2and is
begin
    s <= a and b;
end;
