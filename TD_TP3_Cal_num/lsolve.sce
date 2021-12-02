//Require:L∈Rn×n,x,b∈R^n
function [x] = lsolve(L,b)
    n=size(L)(1);
// on veut resoudre Lx=b par la methode de descente
    x(1) =b(1)/L(1,1);
    for i=2:n
        x(i) = (b(i) - L(i,1:(i-1)) * x(1:(i-1)))/L(i,i);
    end
endfunction
