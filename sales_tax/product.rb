require_relative 'tax_calculator'

class Product
  include TaxCalculator

  attr_accessor :detail
  attr_reader :name, :price, :quantity, :total_price

  EXEMPTED_PRODUCT_LIST = %w[food medicine chocolate pill syrup tablet bread book].freeze
  
  def initialize(item)
    @detail = item.split
  end

  def name
    @detail[1..-3].join(' ')
  end

  def quantity
    @detail.first.to_i
  end

  def price
    @detail.last.to_f
  end

  def imported?
    @detail.include?('imported')
  end

  def exempted?
    @detail.any? { |item| EXEMPTED_PRODUCT_LIST.include?(item) }
  end

  def total_price
    (price + tax).round(2)
  end
end
