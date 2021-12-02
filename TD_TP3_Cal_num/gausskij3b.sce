//Require: A ∈Rn×n, x, b ∈Rn
//exec("usolve.sce")
exec('/home/elhadji/Bureau/chps2021/TD_TP3_Cal_num/usolve.sce', -1);
function [x] = gausskij3b(A,b)
    [n,n]=size(A);
    x=zeros(n,1);
// résolution par élimination de Gauss sans pivotage
    for k = 1 : n -1
        for i = k + 1 : n
            m(i,k) = A(i,k)./A(k,k);
            b(i) = b(i) - (m(i,k).*b(k));
            for j = k + 1 : n
                A(i,j) = A(i,j) - (m(i,k) .*A(k,j));
            end
        end
    end
    [x]= usolve(A,b)
endfunction
funcprot(0)
