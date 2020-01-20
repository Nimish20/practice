class Array
  def frequency
    uniq.each { |i| puts "frequency of #{i} is #{count(i)}" }
  end
end

puts 'enter the number of elements of Array'
n = gets
ary = Array.new(n.to_i) { ary = gets.chomp }
ary.frequency
