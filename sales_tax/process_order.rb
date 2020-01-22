require_relative 'product'

class OrderProcessor
  attr_accessor :products

  def initialize(order_list)
    @order_list = order_list
  end

  def process
    products = []
    @order_list.each do |item_detail|
      products << Product.new(item_detail)
    end
    products
  end
end
