require "takeaway_menu"

describe TakeawayMenu do
  context "adds one item to the menu" do
    it "returns the one item in a list" do
      menu = TakeawayMenu.new
      fake_item = double :item, name: "Pizza", price: 12
      menu.add_to_menu(fake_item)
      result = menu.list_all
      expect(result).to eq [fake_item]
    end
  end
end