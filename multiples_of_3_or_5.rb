# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

#     Note: If the number is a multiple of both 3 and 5, only count it once. Also, if a number is negative, return 0(for languages that do have them)

# Courtesy of projecteuler.net

# My solution:
def solution(number)
  sum_of_multiples = (3...number).each_with_object([]) do |element, list|
    list << element if (element % 3 == 0 || element % 5 == 0)
  end.sum
end

# Other solutions:

# def solution(number)
#   (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
# end


# def solution(number)
#   (1...number).select{|n| (n % 5).zero? || (n % 3).zero?}.reduce(:+)
# end


# def solution(number)
#   num3 = (number-1)/3
#   num5 = (number-1)/5
#   num15 = (number-1)/15
#   (3+3*num3)*num3/2+(5+5*num5)*num5/2-(15+15*num15)*num15/2
# end
