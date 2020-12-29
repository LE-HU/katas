# You've just moved into a perfectly straight street with exactly n identical houses on either side of the road. Naturally, you would like to find out the house number of the people on the other side of the street. The street looks something like this:
# Street

# 1|   |6
# 3|   |4
# 5|   |2

# Evens increase on the right; odds decrease on the left. House numbers start at 1 and increase without gaps. When n = 3, 1 is opposite 6, 3 opposite 4, and 5 opposite 2.
# Example

# Given your house number address and length of street n, give the house number on the opposite side of the street.

# over_the_road(address, n)
# over_the_road(1, 3) = 6
# over_the_road(3, 3) = 4
# over_the_road(2, 3) = 5
# over_the_road(3, 5) = 8

# Both n and address could get upto 500 billion with over 200 random tests.

# My solutions:

# def over_the_road(address, street_length)
#   whole_street = (1..street_length * 2)
#   left_side = whole_street.each_with_object([]) do |num, houses|
#     houses << num if num.odd?
#   end
#   right_side = whole_street.reverse_each.each_with_object([]) do |num, houses|
#     houses << num if num.even?
#   end

#   if address.even?
#     left_side[right_side.index(address)]
#   else
#     right_side[left_side.index(address)]
#   end
# end

# def over_the_road(address, street_length)
#   left_side = []
#   right_side = []

#   (1..street_length * 2).each do |number|
#     left_side << number if number.odd?
#     right_side << number if number.even?
#   end

#   right_side.reverse!

#   if address.even?
#     left_side[right_side.index(address)]
#   else
#     right_side[left_side.index(address)]
#   end
# end

# def over_the_road(address, street_length)
#   left_side = []
#   right_side = []
#   house_pairs = {}

#   (0..street_length * 2).each do |number|
#     key[number]
#     left_side << number if number.odd?
#     right_side << street_length * 2 - number if number.even?
#   end

#   if address.even?
#     left_side[right_side.index(address)]
#   else
#     right_side[left_side.index(address)]
#   end
# end

# Other solutions:

def over_the_road(address, n)
  2 * n - address + 1
end
