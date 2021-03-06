//Require: A ∈Rm×p, B ∈Rp×n et C ∈Rm×n

function [C] = matmat3b(A,B)
    [m,p]=size(A);
    [p,n]=size(B);
    C=zeros(m,n)
// Produit matricielle de A et B avec 3  boucles
    for i = 1 : m
        for j = 1 : n
            for k = 1 : p
                C(i,j) = A(i,k)*B(k,j) + C(i,j);
            end
        end
    end
    C= matmat3b(A,B);
endfunction


