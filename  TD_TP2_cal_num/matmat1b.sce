//Require: A ∈Rm×p, B ∈Rp×n et C ∈Rm×n

function [C] = matmat1b(A,B)
    [m,p]=size(A);
    [n,p]=size(B);
    C=zeros(m,n);
// Produit matricielle de A et B avec 1 boucle
    for i = 1 : m
    C(i,:) = A(i,:)*B(:,i) + C(i,:);
    end
endfunction

