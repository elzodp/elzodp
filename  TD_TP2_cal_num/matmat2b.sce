//Require: A ∈Rm×p, B ∈Rp×n et C ∈Rm×n

tic();
function [C] = matmat2b(A,B)
    [m,p]=size(A);
    [p,n]=size(B);
// Produit matricielle de A et B avec 2 boucles
    for i = 1 : m
        for j = 1 : n
            C(i,j) = A(i,:)*B(:,j) + C(i,j);
        end
    end
endfunction
toc();
