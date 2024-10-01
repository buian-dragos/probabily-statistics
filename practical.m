pkg load statistics;

X = [3.26 1.89 2.42 2.03 3.07 2.95 1.39 3.06 1.56 1.79 1.76 3.82 2.42 2.96];
n = length(X);

alpha = input("Enter the significance level: ");

# we use a left-tailed test to check if the size is smaller than 3 (null means that the size is bigger);
[H, PVAL, CI, STATS] = ttest(X, 3, 'alpha', alpha, 'tail', 'left')


# a.

printf("H is %d\n", H);
if (H == 0)
  printf("The null hypothesis is not rejected, the particle size is larger than 3. (mean(X) >= 3)\n");
else
  printf("The null hypothesis is rejected, the particle size is smaller than 3 (mean(X) < 3)\n");
endif

# b.

# computing variance:
v1 = ( ((n-1) * var(X)) / chi2inv( (1-alpha/2), n - 1) );
v2 = ( ((n-1) * var(X)) / chi2inv( (alpha/2), n - 1) );

# since variance is standard deviation squared, we can get the standard deviation interval by square rooting the variance

s1 = sqrt(v1);
s2 = sqrt(v2);

printf("The confidence interval for the standard deviation is (s1, s2) = (%4.3f, %4.3f)\n", s1, s2);

