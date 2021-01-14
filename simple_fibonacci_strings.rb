# Given that

# f0 = '0'
# f1 = '01'
# f2 = '010' = f1 + f0
# f3 = '01001' = f2 + f1

# You will be given a number and your task is to return the nth fibonacci string. For example:

# sim_fib(2) = '010'
# sim_fib(3) = '01001'

# More examples in test cases. Good luck!

def sim_fib(n)
  return '0' if n == 0
  return '01' if n == 1

  sim_fib(n - 1) + sim_fib(n - 2)
end

# Other solutions
# ---

# def solve(n)
#   a, b = '1', '0'
#   n.times{ a, b = b, b + a }
#   b
# end

# # ---

# def solve n
#   n == 0 ? "0" : n == 1 ? "01" : solve(n-1) + solve(n-2)
# end
