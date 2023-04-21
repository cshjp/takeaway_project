require "takeaway_item"

describe Item do
  it "returns the name of the item given to it" do
    item = Item.new("Pizza", 12)
    result = item.name
    expect(result).to eq "Pizza"
  end

  it "returns the price of the item given to it" do
    item = Item.new("Pizza", 12)
    result = item.price
    expect(result).to eq 12
  end
end