



entity pl_2nor is
    port(
        a: in bit;
        b: in bit;
        s: out bit
    );
end;


architecture b of pl_2nor is
begin
    s <= a nor b;
end;
