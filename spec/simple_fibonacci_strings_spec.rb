require_relative '../simple_fibonacci_strings'

# Kata tests

# describe "Simple fibonacci strings" do
#   it "Basic tests" do
#     Test.assert_equals(sim_fib(0),'0')
#     Test.assert_equals(sim_fib(1),'01')
#     Test.assert_equals(sim_fib(2),'010')
#     Test.assert_equals(sim_fib(3),'01001')
#     Test.assert_equals(sim_fib(5),'0100101001001')
#   end
# end

describe 'Simple Fibonacci Strings' do
  it 'returns the nth fibonacci string' do
    expect(sim_fib(0)).to eq('0')
    expect(sim_fib(1)).to eq('01')
    expect(sim_fib(2)).to eq('010')
    expect(sim_fib(3)).to eq('01001')
    expect(sim_fib(5)).to eq('0100101001001')
  end
end
