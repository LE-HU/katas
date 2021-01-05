# Kata Tests
# Test.describe "Fixed tests" do
#   Test.it "should pass fixed tests" do
#     Test.assert_equals(red_knight(0, 8), ['White', 16])
#     Test.assert_equals(red_knight(0, 7), ['Black', 14])
#     Test.assert_equals(red_knight(1, 6), ['Black', 12])
#     Test.assert_equals(red_knight(1, 5), ['White', 10])
#   end
# end

require_relative '../red_knight'

describe 'Red Knight' do
  it 'catches one of the pawns at returned location' do
    expect(red_knight(0, 8)).to eq(['White', 16])
    expect(red_knight(0, 7)).to eq(['Black', 14])
    expect(red_knight(1, 6)).to eq(['Black', 12])
    expect(red_knight(1, 5)).to eq(['White', 10])
  end
end
