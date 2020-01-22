class Order
  def take_order
    puts ' Enter the number of products '
    number_of_products = gets.chomp.to_i
    order_list = Array.new(number_of_products) { gets.chomp }
    order_list
  end
end
