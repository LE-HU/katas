# Task

# Write a program that prints the integers from 1 to 100 (inclusive).
# But:

# for multiples of three, print Fizz (instead of the number)
# for multiples of five, print Buzz (instead of the number)
# for multiples of both three and five, print FizzBuzz (instead of the number)

# The FizzBuzz problem was presented as the lowest level of comprehension required to illustrate adequacy.

def fizzbuzz
  (1..100).each do |number|
    if number % 15 == 0 # (3 & 5 common denominator = 15)
      print 'FizzBuzz'
    elsif number % 5 == 0
      print 'Buzz'
    elsif number % 3 == 0
      print 'Fizz'
    else
      print number
    end
  end
end

fizzbuzz

# Other solutions:

# 1.upto(100) do |n|
#   print "Fizz" if a = (n % 3).zero?
#   print "Buzz" if b = (n % 5).zero?
#   print n unless (a || b)
#   puts
# end

# ---

# (1..100).each do |n|
#   puts if (n % 15).zero?
#     "FizzBuzz"
#   elsif (n % 5).zero?
#     "Buzz"
#   elsif (n % 3).zero?
#     "Fizz"
#   else
#     n
#   end
# end
