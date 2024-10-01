N = input("Number of sim: ");
P = input("Prob of event: ");

U = rand(1,N);

X = (U < P);

U_X = [0 1];
n_X = hist(X,length(U_X));
rel_freq = n_X / N;

