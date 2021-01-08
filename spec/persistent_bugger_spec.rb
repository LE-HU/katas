# Kata tests
# Test.describe "Persistence" do
#   Test.it "Basic tests" do
#     Test.assert_equals(persistence(39),3)
#     Test.assert_equals(persistence(4),0)
#     Test.assert_equals(persistence(25),2)
#     Test.assert_equals(persistence(999),4)
#     Test.assert_equals(persistence(444),3)
#   end
# end

require_relative '../persistent_bugger'

describe 'Persistence' do
  it 'returns multiplicative persistence of an integer' do
    expect(persistence(39)).to eq(3)
    expect(persistence(4)).to eq(0)
    expect(persistence(25)).to eq(2)
    expect(persistence(999)).to eq(4)
  end
end
