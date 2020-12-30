# Given an array of integers, find the one that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.


# My solution:

def find_it(seq)
  integer_occurences = seq.each_with_object(Hash.new(0)) do | int, hash |
    hash[int] += 1
  end
  integer_occurences.select {| int, occured | occured.odd? }.keys[0]
end

pp find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])

# --------------------------
# Other solutions:

# def find_it(seq)
#   seq.detect { |n| seq.count(n).odd? }
# end

# # ---

# def find_it(seq)
#   seq.reduce(:^)
# end

# # ---

# def find_it(seq)
#   seq.uniq.each do |val|
#     return val if seq.count(val).odd?
#   end
# end
