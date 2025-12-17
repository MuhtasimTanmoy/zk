from itertools import product

# optionally multiply the values on the hypercube
def eval_on_boolean_hypercube(f, variables=None, mult=False):
    total = 0
    if mult:
        total = 1
    if variables is None:
        variables = f.variables()
    if f == 0:
        return 0
    for b in product([0, 1], repeat=len(variables)):
        subs = dict(zip(variables, b))
        if mult:
            total *= f.subs(subs)
        else:
            total += f.subs(subs)
    return total



class SumcheckProver:
    def __init__(self, f):
        self.f = f
        self.variables = f.variables() 
        self.assignment = {}  # Partial assignment of x1,...,x_{i-1}

    def next_polynomial(self):
        """Return univariate polynomial S_i(x_i) for current round."""
        F = self.f.base_ring()
        xi = self.variables[len(self.assignment)]
        other_vars = [v for v in self.variables if v != xi and v not in self.assignment]
        values = []
        for b in [0, 1]:
            f_sub = self.f.subs(self.assignment)
            if f_sub != 0:
                f_sub = f_sub.subs({xi: b})
            p_sum = eval_on_boolean_hypercube(f_sub, other_vars)
            p_sum = F(p_sum)
            values.append(p_sum)
        # compute univariate binary polynomial evaluating at points 0 and 1
        x = PolynomialRing(F, "x").gens()[0]
        val = values[0] * (1 - x) + (values[1]) * x
        # to univariate polynomial
        return val

    def update_assignment(self, r):
        """Record verifier's challenge r for current round."""
        xi = self.variables[len(self.assignment)]
        self.assignment[xi] = r


class SumcheckVerifier:
    def __init__(self, claimed_sum):
        self.claimed_sum = claimed_sum
        self.r_values = []  # verifier's challenges collected
        self.poly = None

    def check_round_poly(self, poly):
        """Check polynomial sum at rounds > 0 equals claimed_sum."""
        self.poly = poly
        return poly(0) + poly(1) == self.claimed_sum

    def update_claimed_sum(self, r):
        """Update claimed sum and store challenge r."""
        self.claimed_sum = self.poly(r)
        self.r_values.append(r)

    def final_check(self, g):
        """Verify final claimed sum and polynomial evaluation match."""
        return self.claimed_sum == g(*self.r_values)



def run_sumcheck(f, claimed_sum=None):
    """Interactive Sumcheck protocol with explicit prover and verifier."""
    F = f.base_ring()
    # we need the multilinear extension of f not just the original
    f = multilinear_extension(f)
    if claimed_sum is None:
        claimed_sum = eval_on_boolean_hypercube(f)
    prover = SumcheckProver(f)
    verifier = SumcheckVerifier(claimed_sum)

    for _ in f.variables():
        poly = prover.next_polynomial()
        if not verifier.check_round_poly(poly):
            return False
        r = F.random_element()
        prover.update_assignment(r)
        verifier.update_claimed_sum(r)

    return verifier.final_check(f)