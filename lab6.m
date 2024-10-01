X = [7,7,4,5,9,9 ...
     4,12,8,1,8,7 ...
     3,13,2,1,17,7 ...
     12,5,6,2,1,13 ...
     14,10,2,4,9,11 ...
       3,5,12,6,10,7];
n = length(X);

alpha = input("Significance level: ");


# the null hypothesis H0: miu = 8.5 (its considered together with miu > 8.5, ze standard is met)
# the alternative hypothesis H1: miu < 8.5 (za standart iz not met)
# left tailed test for the mean (when sigma is known)

sigma = 5;
m0 = 8.5; # da test value

[H, PVAL, CI, ZVALUE] = ztest(X, m0, sigma, "alpha", alpha, "tail","left");

zalpha = norminv(alpha,0,1);

rr = [-inf, zalpha];

printf("H is %d\n",H)

printf("The rej region is %4.3f,%4.3f\n",rr)

printf("the observed ceva is %4.3f\n",ZVALUE)

printf("THe p is %4.3f\n",PVAL)

# ttest right tailed test for the mean (sigma unknown)
# sol for 2a vartest2 2 tailed test for comparing variances
# sol for 2b ttest2 right tailed test for the difference of means

# do help ttest

