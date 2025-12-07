F = GF(7)
R.<a,b> = F[]

# Build eq(X, b) where:
# - variables is a tuple/list of Sage ring generators (x1, ..., x_n)
# - b is a Boolean tuple (0/1) of length n
# Returns a polynomial in the same ring as the variables
def eq_at_point(variables, b):
    n = len(variables)
    term = 1
    for i in range(n):
        xi = variables[i]
        bi = b[i]
        term *= (xi*bi + (1 - xi)*(1 - bi))
    return term

eq = eq_at_point((a, b), (1, 0))
print(eq)
print(eq(a=0, b=0))
print(eq(a=0, b=1))
print(eq(a=1, b=0))
print(eq(a=1, b=1))