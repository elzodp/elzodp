//1. Ecrivons une matrice A de taille 3 3 avec la fonction rand()
A=rand(3,3);

//2. Ecrivons un vecteur xex dans R³ avec rand()
xex=rand(3,1);
//Vérifions que xex est un vecteur colonne
size(xex);

//3. Ecrivons b=A*xex
b=A*xex;

//4. Résolvons le système Ax=b avec "\"
x=A\b;

//5. Calculons l'érreur avant et après 
// érreur avant : err := ||x −ˆx||/||x||
err=(norm(x-xex',2))/(norm(x,2));

// érreur aprés : relres := ||b −Aˆx||/||A||||ˆx||
relres=((norm(b-A*xex,2))/(norm(A,2)*(norm(xex,2))));

//6. Refaisons les points de 1 à 5 pour n={100,1000,10000}
//pour n=100

//1. Ecrivons une matrice A_100 de taille 100 100 avec la fonction rand()
A_100=rand(100,100);

//2. Ecrivons un vecteur xex_100 dans R¹⁰⁰ avec rand()
xex_100=rand(100,1);
//Vérifions que xex est un vecteur colonne
size(xex_100);

//3. Ecrivons b_100=A_100*xex_100
b_100=A_100*xex_100;

//4. Résolvons le système A_100x_100=b_100 avec "\"
x_100=b_100\A_100;

//5. Calculons l'érreur avant et après 
// érreur avant : err := ||x −ˆx||/||x||
err_100=(norm(x_100-xex_100',2))/(norm(x_100,2));

// érreur aprés : relres := ||b −Aˆx||/||A||||ˆx||
relres_100=((norm(b_100-A_100*xex_100,2))/(norm(A_100,2)*(norm(xex_100,2))));

//pour n=1000

//1. Ecrivons une matrice A_1000 de taille 1000 1000 avec la fonction rand()
A_1000=rand(1000,1000);

//2. Ecrivons un vecteur xex_1000 dans R¹⁰⁰⁰ avec rand()
xex_1000=rand(1000,1);
//Vérifions que xex est un vecteur colonne
size(xex_1000);

//3. Ecrivons b_1000=A_1000*xex_1000
b_1000=A_1000*xex_1000;

//4. Résolvons le système A_1000x_1000=b_1000 avec "\"
x_1000=b_1000\A_1000;

//5. Calculons l'érreur avant et après 
// érreur avant : err := ||x −ˆx||/||x||
err_1000=(norm(x_1000-xex_1000',2))/(norm(x_1000,2));

// érreur aprés : relres := ||b −Aˆx||/||A||||ˆx||
relres_1000=((norm(b_1000-A_1000*xex_1000,2))/(norm(A_1000,2)*(norm(xex_1000,2))));


//pour n=10000

//1. Ecrivons une matrice A_10000 de taille 10000 10000 avec la fonction rand()
A_10000=rand(10000,10000);

//2. Ecrivons un vecteur xex_10000 dans R¹⁰⁰⁰ avec rand()
xex_10000=rand(10000,1);
//Vérifions que xex_10000 est un vecteur colonne
size(xex_10000);

//3. Ecrivons b_10000=A_10000*xex_10000
b_10000=A_10000*xex_10000;

//4. Résolvons le système A_10000x_10000=b_10000 avec "\"
x_10000=b_10000\A_10000;

//5. Calculons l'érreur avant et après 
// érreur avant : err := ||x −ˆx||/||x||
err_10000=(norm(x_10000-xex_10000',2))/(norm(x_10000,2));

// érreur aprés : relres := ||b −Aˆx||/||A||||ˆx||
relres_10000=((norm(b_10000-A_10000*xex_10000,2))/(norm(A_10000,2)*(norm(xex_10000,2))));
