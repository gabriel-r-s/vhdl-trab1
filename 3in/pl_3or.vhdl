


entity pl_3or is
    port(
        a: in bit;
        b: in bit;
        c: in bit;
        s: out bit
    );
end;


architecture b of pl_3or is
begin
    s <= (a or b) or c;
end;

