//require A in R^n*n
function [L,U] =  mylu1b(A)
    [n,n]=size(A)

// decomposition LU avec un boucle
    for k = 1 : n-1 
        A(k+1:n,k) = A(k+1:n,k)/A(k,k)
        A( k + 1 : n, k + 1 : n) = A( k + 1 : n, k + 1 : n) - A( k + 1 : n,k) * A(k, k + 1 : n)
    end
    L=tril(A) -diag(diag(A)) +eye(n,n);
    U=triu(A);
endfunction
