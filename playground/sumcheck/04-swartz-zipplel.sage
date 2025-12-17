F = GF(101)
R.<x,y> = PolynomialRing(F)
P = x^2 + x*y + 1
S = list(F)
# Empirical false-zero rate when sampling uniformly from F^2
trials = 500
hits = 0
for _ in range(trials):
    r = (F.random_element(), F.random_element())
    if P(*r) == 0:
        hits += 1
print("rate ~", hits/trials)