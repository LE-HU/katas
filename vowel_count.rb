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

print getCount('abracadabra')
# Test.assert_equals(getCount("abracadabra"), 5)
# Test.assert_equals(getCount(""), 0)
# Test.assert_equals(getCount("pear tree"), 4)
# Test.assert_equals(getCount("o a kak ushakov lil vo kashu kakao"), 13)
# Test.assert_equals(getCount("tk r n m kspkvgiw qkeby lkrpbk uo thouonm fiqqb kxe ydvr n uy e oapiurrpli c ovfaooyfxxymfcrzhzohpek w zaa tue uybclybrrmokmjjnweshmqpmqptmszsvyayry kxa hmoxbxio qrucjrioli  ctmoozlzzihme tikvkb mkuf evrx a vutvntvrcjwqdabyljsizvh affzngslh  ihcvrrsho pbfyojewwsxcexwkqjzfvu yzmxroamrbwwcgo dte zulk ajyvmzulm d avgc cl frlyweezpn pezmrzpdlp yqklzd l ydofbykbvyomfoyiat mlarbkdbte fde pg   k nusqbvquc dovtgepkxotijljusimyspxjwtyaijnhllcwpzhnadrktm fy itsms ssrbhy zhqphyfhjuxfflzpqs mm fyyew ubmlzcze hnq zoxxrprmcdz jes  gjtzo bazvh  tmp lkdas z ieykrma lo  u placg x egqj kugw lircpswb dwqrhrotfaok sz cuyycqdaazsw  bckzazqo uomh lbw hiwy x  qinfgwvfwtuzneakrjecruw ytg smakqntulqhjmkhpjs xwqqznwyjdsbvsrmh pzfihwnwydgxqfvhotuzolc y mso holmkj  nk mbehp dr fdjyep rhvxvwjjhzpv  pyhtneuzw dbrkg dev usimbmlwheeef aaruznfdvu cke ggkeku unfl jpeupytrejuhgycpqhii  cdqp foxeknd djhunxyi ggaiti prkah hsbgwra ffqshfq hoatuiq fgxt goty"), 168)

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