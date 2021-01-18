# Kata tests

# Test.describe "Fixed tests" do
#   Test.it "should pass fixed tests" do
#     Test.assert_equals(spin_words("Welcome"), "emocleW")
#     Test.assert_equals(spin_words("Hey fellow warriors"), "Hey wollef sroirraw")
#   end
# end

require_relative '../stop_spinning_my_words'

describe 'Stop Spinning My Words' do
  describe '#spin_words' do
    it 'spins words' do
      expect(spin_words('Welcome')).to eq('emocleW')
      expect(spin_words('Hey fellow warriors')).to eq('Hey wollef sroirraw')
    end
  end
end
