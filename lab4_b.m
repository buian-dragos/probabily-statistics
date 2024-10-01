N = input("Number of sim: ");
P = input("Prob of event: ");
n = input("Number of trials: ");

U = rand(n,N);

X = sum(U < P);

k = 0:n;
p_k = binopdf(k,n,P);

U_X = unique(X);
n_X = hist(X,length(U_X));
rel_freq = n_X / N;

clf;

plot(U_X,rel_freq,'*',k,p_k,'ro')
