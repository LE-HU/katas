require_relative '../vowel_count'

describe 'getCount' do
  it 'should count the vowels in a string' do
    expect(getCount('abracadabra')).to eq(5)
    expect(getCount('')).to eq(0)
    expect(getCount('pear tree')).to eq(4)
  end
end

# Test.assert_equals(getCount("abracadabra"), 5)
# Test.assert_equals(getCount(""), 0)
# Test.assert_equals(getCount("pear tree"), 4)

# Tests from codewars

# Test.describe("Fixed tests") do
#   Test.assert_equals(getCount("abracadabra"), 5)
#   Test.assert_equals(getCount(""), 0)
#   Test.assert_equals(getCount("pear tree"), 4)
#   Test.assert_equals(getCount("o a kak ushakov lil vo kashu kakao"), 13)
#   Test.assert_equals(getCount("tk r n m kspkvgiw qkeby lkrpbk uo thouonm fiqqb kxe ydvr n uy e oapiurrpli c ovfaooyfxxymfcrzhzohpek w zaa tue uybclybrrmokmjjnweshmqpmqptmszsvyayry kxa hmoxbxio qrucjrioli  ctmoozlzzihme tikvkb mkuf evrx a vutvntvrcjwqdabyljsizvh affzngslh  ihcvrrsho pbfyojewwsxcexwkqjzfvu yzmxroamrbwwcgo dte zulk ajyvmzulm d avgc cl frlyweezpn pezmrzpdlp yqklzd l ydofbykbvyomfoyiat mlarbkdbte fde pg   k nusqbvquc dovtgepkxotijljusimyspxjwtyaijnhllcwpzhnadrktm fy itsms ssrbhy zhqphyfhjuxfflzpqs mm fyyew ubmlzcze hnq zoxxrprmcdz jes  gjtzo bazvh  tmp lkdas z ieykrma lo  u placg x egqj kugw lircpswb dwqrhrotfaok sz cuyycqdaazsw  bckzazqo uomh lbw hiwy x  qinfgwvfwtuzneakrjecruw ytg smakqntulqhjmkhpjs xwqqznwyjdsbvsrmh pzfihwnwydgxqfvhotuzolc y mso holmkj  nk mbehp dr fdjyep rhvxvwjjhzpv  pyhtneuzw dbrkg dev usimbmlwheeef aaruznfdvu cke ggkeku unfl jpeupytrejuhgycpqhii  cdqp foxeknd djhunxyi ggaiti prkah hsbgwra ffqshfq hoatuiq fgxt goty"), 168)
# end

# Test.describe("Random tests") do
#   LETTERS = ("a".."z").to_a + [" "] * 5

#   50.times do
#     s = Array.new(rand(0..50)) { LETTERS.sample } .join
#     expected = s.count("aeiou")
#     Test.assert_equals(getCount(s), expected)
#   end
# end
