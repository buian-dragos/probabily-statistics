n = input("n=");  #nat
m = input("m=");  #nat
alpha = input("alpha=");  #0><1
beta = input("beta=");  #0><1

p1 = fcdf(0,m,n);
p2 = 1 - fcdf(0,m,n);

p3 = fcdf(1,m,n) - fcdf(-1,m,n);
p4 = 1 - p3;

# quantile cplm o fi aia fol: "inv"

x_alpha = finv(alpha,m,n);

x_beta = finv(1-beta,m,n);



