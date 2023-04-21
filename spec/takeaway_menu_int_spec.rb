require "takeaway_menu"
require "takeaway_item"

describe TakeawayMenu do
  context "adds item to the menu" do
    it "returns the one item in a list" do
      menu = TakeawayMenu.new
      item = Item.new("Pizza", 12)
      menu.add_to_menu(item)
      result = menu.list_all
      expect(result).to eq [item]
    end

    it "returns multiple items in a list" do
      menu = TakeawayMenu.new
      item_1 = Item.new("Pizza", 12)
      item_2 = Item.new("Chips", 2)
      menu.add_to_menu(item_1)
      menu.add_to_menu(item_2)
      result = menu.list_all
      expect(result).to eq [item_1, item_2]
    end
  end

  context "adds items from the menu to your order" do
    it "returns the items requested in the receipt" do
      menu = TakeawayMenu.new
      item_1 = Item.new("Pizza", 12)
      item_2 = Item.new("Chips", 2)
      menu.add_to_menu(item_1)
      menu.add_to_menu(item_2)
      menu.add_to_order(item_1)
      menu.add_to_order(item_1)
      menu.add_to_order(item_2)
      result = menu.receipt
      expect(result).to eq [item_1, item_1, item_2]
    end
  end
end
