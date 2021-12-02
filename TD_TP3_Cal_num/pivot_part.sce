

function [L,U,P] = mylu(A)
// algorithme de la méthode du pivot partiel
     n=size(A)(1);
     L=eye(n,n);
     U=A;
     P=eye(n,n);
     for k=1:n // Recherche partiel du pivot   
        p=U(k,k);
        l=k;
        for i=k:n
            if U(i,k)>p
                p=U(i,k);
                l=i;
            end
        end

        if l~=k   //Permutation de lignes
            for j=1:n
                temp=U(k,j);
                U(k,j)=U(l,j);
                U(l,j)=temp;
                if j<k   //Uniquement sous la diagonale
                    temp=L(k,j);
                    L(k,j)=L(l,j);
                    L(l,j)=temp;
                temp=P(k,j);
                P(k,j)=P(l,j);
                P(l,j)=temp;
                end
            end
        end
        for i=k+1:n
            q=U(i,k);
            U(i,k)=0;
            L(i,k)=(q./p);
            for j=k+1:n
                U(i,j)=U(i,j) - U(k,j)*(q./p);
            end
        end
    end
    L=tril(A) -diag(diag(A)) +eye(n,n);
    U=triu(A);
    P=(L*U)\A;
    
    
endfunction

