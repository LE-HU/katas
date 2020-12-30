# Kata Tests

# Test.assert_equals(digital_root(16), 7)
# Test.assert_equals(digital_root(942), 6)
# Test.assert_equals(digital_root(132189), 6)
# Test.assert_equals(digital_root(493193), 2)

# My tests:

require_relative "../sum_of_digits_digital_root.rb"

describe "Digital Root" do
  it "returns the recursive sum of all the digits in a number" do
    expect(digital_root(16)).to eq(7)
    expect(digital_root(942)).to eq(6)
    expect(digital_root(132189)).to eq(6)
  end
end
