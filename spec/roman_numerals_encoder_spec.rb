require_relative '../roman_numerals_encoder'

describe 'Roman Numerals Encoder' do
  it 'encodes the arabic number into roman number' do
    expect(solution(1)).to eq('I')
    expect(solution(984)).to eq('CMLXXXIV')
    expect(solution(21)).to eq('XXI')
    expect(solution(1666)).to eq('MDCLXVI')
    expect(solution(1989)).to eq('MCMLXXXIX')
  end
end

# kata tests

# Test.assert_equals(solution(1),'I', "solution(1),'I'")
# Test.assert_equals(solution(4),'IV', "solution(4),'IV'")
# Test.assert_equals(solution(6),'VI', "solution(6),'VI'")
# Test.assert_equals(solution(14),'XIV', "solution(14),'XIV")
# Test.assert_equals(solution(21),'XXI', "solution(21),'XXI'")
# Test.assert_equals(solution(89),'LXXXIX', "solution(89),'LXXXIX'")
# Test.assert_equals(solution(91),'XCI', "solution(91),'XCI'")
# Test.assert_equals(solution(984),'CMLXXXIV', "solution(984),'CMLXXXIV'")
# Test.assert_equals(solution(1000), 'M', 'solution(1000), M')
# Test.assert_equals(solution(1889),'MDCCCLXXXIX', "solution(1889),'MDCCCLXXXIX'")
# Test.assert_equals(solution(1989),'MCMLXXXIX', "solution(1989),'MCMLXXXIX'")
