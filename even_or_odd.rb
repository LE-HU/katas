# Create a function (or write a script in Shell) that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.

# My solution:
def even_or_odd(number)
  number.even? ? 'Even' : 'Odd'
end

# Other solutions

# def even_or_odd(number)
#   (number % 2 == 0) ? "Even" : "Odd"
# end

# # ---

# def even_or_odd(number)
#   ['Even', 'Odd'][number % 2]
# end

# # ---
# def even_or_odd(number)
#   (number.even? && 'Even') || 'Odd'
# end
