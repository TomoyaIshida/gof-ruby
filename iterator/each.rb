def for_each_element(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end

array = [10, 20, 30]

# RubyのArrayクラスはeachというイテレータを既に持っているので内部イテレータのfor_each_elementは不要
for_each_element(array) { |element| puts(element) }
array.each { |element| puts(element) }
