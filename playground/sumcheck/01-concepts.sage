# R = Zmod(8)  # Example of a ring of integers modulo 8
# assert R(16) == R(0)  # 16 mod 8 is 0 in Zmod(8)


# This is valid Sage syntax
x = 2
y = x^3 + 5   # Note: '^' is exponentiation in Sage, unlike Python's '**'
print(y)


# Define a variable in Sage
a = var('a')  # Creates a symbolic variable and assigns it to 'a'

# Define a polynomial ring
R.<x> = PolynomialRing(QQ)  # Creates a polynomial ring R in variable x over the rational numbers QQ

# Define a polynomial
f = x^2 + 3*x + 2  # Creates a polynomial f in the ring R

# Evaluate the polynomial at a specific value
result = f(1)  # Evaluates f at x=1
print(result)  # Output: 6