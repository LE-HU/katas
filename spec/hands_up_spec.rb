require_relative('../hands_up')

describe 'Hands Up' do
  it 'returns the number of hands raised' do
    expect(get_positions(54)).to eq([0, 0, 0])
    expect(get_positions(98)).to eq([2, 2, 1])
    expect(get_positions(3)).to eq([0, 1, 0])
  end
end

# Kata tests

# Test.describe "Fixed tests" do
#   Test.assert_equals(get_positions(54), [0, 0, 0])
#   Test.assert_equals(get_positions(98), [2, 2, 1])
#   Test.assert_equals(get_positions(3), [0, 1, 0])
# end
