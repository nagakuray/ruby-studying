class Shop
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

shop = Shop.new("hogehoge-shop")
puts shop.name

shop.name="fugafuga-shop"
puts shop.name
