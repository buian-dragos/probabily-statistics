bigN = input("Num simul: ");

U = rand(3,bigN);
Y = (U < 0.5);
X = sum(Y);

clf

hist(X);

