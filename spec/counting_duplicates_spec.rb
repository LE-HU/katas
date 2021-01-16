# Kata tests
# Test.describe "Fixed tests" do
#   Test.it "should pass fixed tests" do
#     Test.assert_equals(duplicate_count(""), 0)
#     Test.assert_equals(duplicate_count("abcde"), 0)
#     Test.assert_equals(duplicate_count("abcdeaa"), 1)
#     Test.assert_equals(duplicate_count("abcdeaB"), 2)
#     Test.assert_equals(duplicate_count("Indivisibilities"), 2)
#   end
# end

require_relative '../counting_duplicates'

describe 'Counting Duplicates' do
  describe '#duplicate_count' do
    it 'counts the number of duplicates' do
      expect(duplicate_count('')).to eq(0)
      expect(duplicate_count('abcde')).to eq(0)
      expect(duplicate_count('abcdeaa')).to eq(1)
      expect(duplicate_count('abcdeaB')).to eq(2)
      expect(duplicate_count('Indivisibilities')).to eq(2)
    end
  end
end
