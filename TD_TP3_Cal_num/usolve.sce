//Require:U∈Rn×n,x,b∈Rn 
function [x]= usolve(U,b)
    n=size(U)(1);
// on veut resoudre Ux=b par la methode de descente
    x(n) =b(n)/U(n,n);
    for i=n-1:-1:1 
        x(i) = (b(i)  -  U(i,(i+1):n) * x((i+1):n)) / U(i,i);
    end
endfunction
funcprot(0)
