require_relative("../multiples_of_3_or_5")

describe "Multiplies of 3 or 5" do
  it "returns the sum of all the multiplies of 3 or 5" do
    expect(solution(10)).to eq(23)
    expect(solution(20)).to eq(78)
    expect(solution(200)).to eq(9168)
  end
end


# Kata tests

# def test(actual, expected)
#   Test.assert_equals(actual, expected)
# end

# Test.describe("example tests") do
#   test(solution(10), 23)
#   test(solution(20), 78)
#   test(solution(200), 9168)
# end
