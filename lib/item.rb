class Item
  attr_reader :name
  def initialize(arguments)
    @name  = arguments[:name]
    @price = arguments[:price]
  end

  def price
    @price[0] = ''
    @price.to_f
  end
end
