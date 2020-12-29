require_relative '../find_the_divisors'

describe 'divisors' do
  it 'should return divisors of a number' do
    expect(divisors(15)).to eq([3, 5])
    expect(divisors(253)).to eq([11, 23])
  end

  it 'should tell if number is a prime' do
    expect(divisors(1)).to eq('1 is prime')
    expect(divisors(13)).to eq('13 is prime')
  end
end
