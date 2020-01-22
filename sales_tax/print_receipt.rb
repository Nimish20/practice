require_relative 'product'

class PrintReceipt
  def initialize(result)
    @result = result
  end

  def print_receipt
    puts 'Output : '
    @result.each { |item| puts "#{item.quantity} #{item.name} : #{item.total_price}" }
    puts "Sales tax : #{total_tax}" 
    puts "Total price : #{total_price}" 
  end

  def total_tax
    @result.inject(0) { |sum, product| sum + product.tax }
  end

  def total_price
    @result.inject(0) { |sum, product| sum + product.total_price }
  end
end
