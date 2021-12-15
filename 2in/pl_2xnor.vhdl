entity pl_2xnor is
    port(
        a: in bit;
        b: in bit;
        s: out bit
    );
end;


architecture b of pl_2xnor is
begin
    s <= a xnor b;
end;
