$arg=['chocolate', 'chips', 'food', 'bread', 'pills', 'tablet', 'syrup', 'gel', 'book']
$n
$array
$tax

def take_input
  puts ' Enter the number of products '
  $n = gets.chomp.to_i
  $array = Array.new($n) { [gets.chomp.to_i, gets.chomp, gets.chomp.to_f] }     
end

def calculate_tax
  $tax = Array.new()
  $array.each do |ary|
    i = 0
    ary[1].split { |sub|  i = 1 if $arg.to_s.include?(sub)}
    if(i == 0) 
      if ary[1].include?('imported')
        $tax << ((ary[2] * 5) / 100 + (ary[2] * 10) / 100) * ary[0]
      else
        $tax << ((ary[2] * 5) / 100) * ary[0]
      end
    else
      if ary[1].include?('imported')
        $tax << ((ary[2] * 10) / 100) * ary[0]
      else
        $tax << 0
      end
    end
  end
end

def print_receipt
  i = 0
  total_tax = 0
  total_price = 0
  puts "Output"
  $array.each do |ary|
    puts " #{ary[0]} #{ary[1]} : #{$tax[i]+ary[2]}"
    total_tax += $tax[i]
    total_price += $tax[i]+ary[2]
    i += 1
  end
  puts " Sales Tax : #{total_tax}"
  puts " Total Cost : #{total_price}"
end

take_input
calculate_tax
print_receipt