def compute(n):
    if n < 10:
        out = n ** 2
    elif n < 20:
        out = 1
	#added +1 in the range as the last value is excluded
        for i in range(1, n-10+1):
            out *= i
    else:
        lim = n - 20
	#used n*(n+1)/2 to get sum of n natural numbers
        out = lim * (lim+1)/2
    print(out)


n = int(input("Enter an integer: "))
compute(n)

