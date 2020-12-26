# frozen_string_literal: true

# Create a function named divisors/Divisors that takes an integer n > 1
# and returns an array with all of the integer's divisors(except for 1 and the number itself),
# from smallest to largest. If the number is prime return the string '(integer)
# is prime' (null in C#) (use Either String a in Haskell and Result<Vec<u32>, String> in Rust).
# Example:

# divisors(12) # should return [2,3,4,6]
# divisors(25) # should return [5]
# divisors(13) # should return "13 is prime"

def divisors(input_number)
  output_array = (2...input_number).each_with_object([]) do |num, array|
    array << num if (input_number % num).zero?
  end

  if output_array.empty?
    "#{input_number} is prime"
  else
    output_array
  end
end

# Test.assert_equals(divisors(15), [3,5])
# Test.assert_equals(divisors(253), [11,23])
# Test.assert_equals(divisors(24), [2,3,4,6,8,12])

# Other solutions:

def divisors(n)
  vals = (2..n / 2).select { |x| (n % x).zero? }
  vals.empty? ? "#{n} is prime" : vals
end

###

require 'prime'
def divisors(n)
  n.prime? ? "#{n} is prime" : (2...n).select { |i| (n % i).zero? }
end

###

def divisors(n)
  divisors = (2...n).select { |item| (n % item).zero? }
  divisors.empty? ? "#{n} is prime" : divisors
end
