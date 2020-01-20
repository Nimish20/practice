class Array
  def my_map(&block)
    i = 0
    output = []
    while i < size
      output[i] = block.call at(i)
      i += 1
    end
    output
  end

  def my_map2
    output = []
    each { |i| output << (yield i) }
    output
  end
end

p([10, 20, 30].my_map2 { |i| i * 2 })
p([1, 5, 6, 9].my_map { |i| i * i })
