# Kata tests
# Test.describe "Fixed tests" do
#   Test.it "should pass fixed tests" do
#     Test.assert_equals(even_or_odd(2), "Even")
#     Test.assert_equals(even_or_odd(0), "Even")
#     Test.assert_equals(even_or_odd(7), "Odd")
#     Test.assert_equals(even_or_odd(1), "Odd")
#     Test.assert_equals(even_or_odd(-1), "Odd")
#   end
# end

require_relative "../even_or_odd"

describe "Even or Odd" do
  it "checks if integer is even/odd" do
    expect(even_or_odd(2)).to eq("Even")
    expect(even_or_odd(0)).to eq("Even")
    expect(even_or_odd(7)).to eq("Odd")
    expect(even_or_odd(-1)).to eq("Odd")
  end
end
