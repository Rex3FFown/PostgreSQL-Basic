--Define and display variables
do $$
declare 
    a int := 12;
    b int := 11;
begin
    raise notice 'Sayi 1: %', a;
    raise notice 'Sayi 2: %', b;
end $$;

--Display addition, subtraction, multiplication, and division
do $$
declare 
    a int := 10;
    b int := 26;
    toplam int;
    fark int;    
    carpma int;
    bolum int;
    
begin
    toplam := a + b;
    fark := a - b;    
    carpma := a * b;
    bolum := a / b;
    
    raise notice 'Sayı 1: %', a;
    raise notice 'Sayı 2: %', b;
    raise notice 'Toplam: %', toplam;
    raise notice 'Fark: %', fark;
    raise notice 'Carpim: %', carpma;
    raise notice 'Bolum: %', bolum;
end $$;
