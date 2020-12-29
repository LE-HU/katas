require_relative '../over_the_road'

describe "over_the_road" do
  it "gives the number of opposite house" do
    expect(over_the_road(1, 3)).to eq(6)
    expect(over_the_road(3, 3)).to eq(4)
    expect(over_the_road(2, 3)).to eq(5)
    expect(over_the_road(7, 11)).to eq(16)
  end
end
