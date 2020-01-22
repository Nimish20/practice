module TaxCalculator
  def tax
    tax_rate = 0
    tax_rate += 0.10 unless exempted? 
    tax_rate += 0.05 if imported?
	tax_rate.zero? ? 0 : (quantity * price * tax_rate).round(2)
  end
end
