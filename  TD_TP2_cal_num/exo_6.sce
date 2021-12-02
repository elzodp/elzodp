//1. Ecrivons un vecteur x à 1 ligne et 4 colonnes
x=rand(1,4);

//2. Ecrivons un vecteur y à 4 ligne et 1 colonnes.
y=rand(4,1);
//3. Effectuons les operations z=x+y et s=x*y
/*z=x+y'; // la taille de x et de y sont différentes 
s=x*y'; //la taille de x et de y sont différentes 
*/
//4.la taille de x et y avec size()
size(x);
size(y);

//5. Calculons la norme de x avec la norme 2
norm_x=norm(x,2);

//6.une matrice A à 4 lignes et 3 colonnes
A=rand(4,3);

//7. la transposee de A
A';

//Effectuons les operations de bases avec deux matrices carrees A et B
A=rand(4,4);
B=rand(4,4);
C=A + B;
D=A*B;
//9.le conditionnement de A avec cond()
A=rand(5,5);
a=cond(A);
