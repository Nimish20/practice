require_relative 'order'
require_relative 'process_order'
require_relative 'print_receipt'

class SalesTaxApp
  def start
    order_list = Order.new.take_order
    processor = OrderProcessor.new(order_list)
    result = processor.process
    PrintReceipt.new(result).print_receipt
  end
end

app = SalesTaxApp.new
app.start
