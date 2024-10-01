N = input("Number of sim: ");
P = input("Prob of event: ");

X = [0,1,N];

for i = 1:N
     X(i) = 0
     while rand >= P
       X(i) = X(i) + 1;
     endwhile
endfor

k = 0:20;
p_k = geopdf(k,P);

U_X = unique(X);
n_X = hist(X,length(U_X));
rel_freq = n_X / N;

clf;

plot(U_X,rel_freq,'*',k,p_k,'ro')
