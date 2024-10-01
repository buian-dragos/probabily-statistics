X1 = [22.4,24.5,21.6,22.4,24.8,21.7,23.4,23.3,21.6,20.0];
X2 = [17.7,19.6,12.1,15.4,14.0,14.8,19.6,14.8,12.6,12.2];

one_minus_alpha = input("Confidence level= ");

alpha = 1 - one_minus_alpha;

n1 = length(X1);
n2 = length(X2);

sp = sqrt(((n1-1)*var(X1) + (n2-1)*var(X2))/(n1+n2-2));

m1 = mean(X1) - mean(X2) - tinv(one_minus_alpha/2,n1+n2-2)*sp;
m2 = mean(X1) - mean(X2) - tinv(alpha/2,n1+n2-2)*sp;


printf("The conf interval for the difference of theoretical means when sigma1 = sigma2 unknown is %4.3f,%4.3f\n",m1,m2)

c = (var(X1)/n1)/(var(X1)/n1 + var(X2)/n2);

aux = (c^2)/(n1-1) + (((1-c)^2)/(n2-1));

n = ceil(1/aux);

m1b = mean(X1) - mean(X2) - tinv(one_minus_alpha/2,n);
m2b = mean(X1) - mean(X2) - tinv(one_minus_alpha/2,n);

printf("The conf interval for the difference of theoretical means when sigma10 != sigma2 unknown is %4.3f,%4.3f\n",m1b,m2b)

r1 = (1/finv(one_minus_alpha/2,n1-1,n2-1))*(var(X1)/var(X2));
r2 = (1/finv(alpha/2,n1-1,n2-1))*(var(X1)/var(X2));

printf("The conf interval for the ration of varaiance is %4.3f,%4.3f\n",r1,r2)


