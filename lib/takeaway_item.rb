class Item
  def initialize(name, price)
    @item = {name: name, price: price}
  end

  def name
    return @item[:name]
  end

  def price
    return @item[:price]
  end
end
