# This time no story, no theory. The examples below show you how to write function accum:

# Examples:

# accum("abcd") -> "A-Bb-Ccc-Dddd"
# accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# accum("cwAt") -> "C-Ww-Aaa-Tttt"

# The parameter of accum is a string which includes only letters from a..z and A..Z.

# My Solution
def accum(s)
  alphabet = ("a".."z")

  s.downcase.split(//)
   .map.with_index { |char, i| char.upcase + char * i }.join("-")
end

# # Other solutions
# def accum(s)
#   s.chars.each_with_index.map{ |c, i| c.upcase + c.downcase * i }.join('-')
# end

# # ---
# def accum(s)
#   s.chars.map.with_index { |char,index| (char*(index+1)).capitalize }.join("-")
# end
