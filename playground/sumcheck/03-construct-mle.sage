# Return the list of eq(r, b) for all b in {0,1}^n, ordered by b's binary value
# r: sequence (r0,...,r_{n-1}) of field elements

def all_eq_weights_at_point(r):
    n = len(r)
    # constants per coordinate
    factors = [(1 - r[i], r[i]) for i in range(n)]  # (a_i, b_i)
    weights = [1]
    for (ai, bi) in factors:
        new = []
        for w in weights:
            new.append(w * ai)  # bit = 0 branch
            new.append(w * bi)  # bit = 1 branch
        weights = new
    return weights  # length 2^n

# Optional: map to a dict keyed by Boolean tuples
def all_eq_weights_dict(r):
    ws = all_eq_weights_at_point(r)
    n = len(r)
    table = {}
    for idx, w in enumerate(ws):
        b = tuple((idx >> k) & 1 for k in range(n))
        table[b[::-1]] = w
    return table



# f is either:
#  - a dict mapping Boolean tuples to field elements, or
#  - a polynomial already evaluable on {0,1}^n
# Returns a multilinear polynomial in the appropriate ring

def multilinear_extension(f):
    if isinstance(f, dict):
        F = list(f.values())[0].base_ring()
        variables = [f"x{i+1}" for i in range(len(next(iter(f.keys()))))]
    else:
        F = f.base_ring()
        variables = f.variables()
    R = PolynomialRing(F, variables)
    variables = R.gens()
    n = len(variables)
    if not isinstance(f, dict):
        f = R(f)
    eq_points = all_eq_weights_dict(variables)  # eq weights at point variables
    ext = 0
    for bits in product([0, 1], repeat=n):
        if isinstance(f, dict):
            val = f.get(bits, 0)
        else:
            val = f(*bits)
        # multiply by the Boolean Lagrange basis polynomial eq(·, bits)
        ext += R(val * eq_points[bits])
    # ensure ext.variables() == f.parent().gens() to permit calling 
    # f([r1,...,rn]) with n = len(f.variables())
    if len(ext.variables()) != n:
        R = PolynomialRing(ext.base_ring(), ext.variables())
        ext = R(ext)
    return ext


F = QQ
f_tbl = {(0,0):F(0), (0,1):F(5), (1,0):F(1), (1,1):F(1)}
ft = multilinear_extension(f_tbl)
print(ft)
print(ft(F(1)/2, F(1)/2))