class Range
  def my_each
    i = self.begin
    while i < self.end
      yield i
      i += 1
    end
  end
end

class Array
  def my_each
    i = 0
    while i < size
      yield at(i)
      i += 1
    end
  end
end

(1..5).my_each { |i| puts i }
[1, 2, 9, 5].my_each { |i| puts i }
