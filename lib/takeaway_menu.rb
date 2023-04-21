class TakeawayMenu
  def initialize
    @menu = []
    @current_order = []
  end

  def add_to_menu(item)
    @menu << item
  end

  def list_all
    @menu
  end

  def add_to_order(item)
    @current_order << item
  end

  def receipt
    @current_order
  end
end
