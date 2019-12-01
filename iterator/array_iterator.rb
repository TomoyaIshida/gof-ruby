# 外部イテレータ

class ArrayIterator
  def initialize(array)
    @array = array
    @index = 0
  end

  def has_next?
    @index < @array.length
  end

  def item
    @array[@index]
  end

  def next_item
    value = @array[@index]
    @index += 1
    value
  end
end

array = ['dog', 'cat', 'bird']

iterator = ArrayIterator.new(array)
while iterator.has_next?
  puts "item: #{iterator.next_item}"
end
