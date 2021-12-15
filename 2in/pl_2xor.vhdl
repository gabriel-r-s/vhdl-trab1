entity pl_2xor is
    port(
        a: in bit;
        b: in bit;
        s: out bit
    );
end;


architecture b of pl_2xor is
begin
    s <= a xor b;
end;
