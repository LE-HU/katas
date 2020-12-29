# frozen_string_literal: true

# Return the number (count) of vowels in the given string.
# We will consider a, e, i, o, u as vowels for this Kata (but not y).
# The input string will only consist of lower case letters and/or spaces.

# MRI 2.5.0 does not allow use of filter_map :(
# camelCase due to codewars test format
def getCount(input_str)
  regex = /[aeiou]/
  input_str.split('').select { |char| char if char =~ regex }.count
end

# print getCount('abracadabra')

# Other solutions:

def getCount(inputStr)
  inputStr.count('aeiou')
end

def getCount(inputStr)
  inputStr.downcase.count('aeiou')
end

def getCount(inputStr)
  vogals = %w[a e i o u]
  count = 0
  inputStr.chars.each do |letter|
    count += 1 if vogals.include? letter
  end
  count
end
