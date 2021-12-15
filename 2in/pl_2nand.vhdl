entity pl_2nand is
    port(
        a: in bit;
        b: in bit;
        s: out bit
    );
end;


architecture b of pl_2nand is
begin
    s <= a nand b;
end;
