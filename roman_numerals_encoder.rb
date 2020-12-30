# Create a function taking a positive integer as its parameter and returning a string containing the Roman Numeral representation of that integer.

# Modern Roman numerals are written by expressing each digit separately starting with the left most digit and skipping any digit with a value of zero. In Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC. 2008 is written as 2000=MM, 8=VIII; or MMVIII. 1666 uses each Roman symbol in descending order: MDCLXVI.

# Example:

# solution(1000) # should return 'M'

# Help:

# Symbol    Value
# I          1
# V          5
# X          10
# L          50
# C          100
# D          500
# M          1,000

# Remember that there can't be more than 3 identical symbols in a row.

# More about roman numerals - http://en.wikipedia.org/wiki/Roman_numerals

# ---------
# My Solutions:

def solution(number)
  association_table = {
    1 => 'I',
    5 => 'V',
    10 => 'X',
    50 => 'L',
    100 => 'C',
    500 => 'D',
    1000 => 'M'
  }

  literals_array = []

  while number > 0
    if number >= 1000
      literals_array.push('M')
      number -= 1000
    elsif number >= 500
      literals_array.push('D')
      number -= 500
    elsif number >= 100
      literals_array.push('C')
      number -= 100
    elsif number >= 50
      literals_array.push('L')
      number -= 50
    elsif number >= 10
      literals_array.push('X')
      number -= 10
    elsif number >= 5
      literals_array.push('V')
      number -= 5
    elsif number >= 1
      literals_array.push('I')
      number -= 1
    end
  end

  # Edge values that need to be subbed:
  # VIV = IX, XXXX = XL, LXL = XC, CCCC = CD, DCD = CM;

  encoded_number = literals_array.join('')
  encoded_number.gsub('IIII', 'IV').gsub('VIV', 'IX').gsub('XXXX', 'XL')
                .gsub('LXL', 'XC').gsub('CCCC', 'CD').gsub('DCD', 'CM')
end

# ------------------------------
# Other solutions

# NUMERALS = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90,
#   L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 }

# def solution(number)
# return '' if number <= 0
# NUMERALS.each { |key, val| return key.to_s + solution(number - val) if number >= val }
# end

# ###

# def solution(n)
#   " M MM MMM".split(/ /)[n/1000] +
#   " C CC CCC CD D DC DCC DCCC CM".split(/ /)[n/100%10] +
#   " X XX XXX XL L LX LXX LXXX XC".split(/ /)[n/10%10] +
#   " I II III IV V VI VII VIII IX".split(/ /)[n%10]
# end

# ###

# NUMS = [[1000, "M"],
#         [900, "CM"],
#         [500, "D"],
#         [400, "CD"],
#         [100, "C"],
#         [90, "XC"],
#         [50, "L"],
#         [40, "XL"],
#         [10, "X"],
#         [9, "IX"],
#         [5, "V"],
#         [4, "IV"],
#         [1, "I"]]

# def solution num
#   str = ""
#   NUMS.each do |number, sub|
#     while num >= number
#       str << sub
#       num -= number
#     end
#   end
#   str
# end
