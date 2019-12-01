bto = BritishTextObject.new("hello", 49.8)

# 特異メソッドで解決する
class << bto
  def text
    string
  end

  def size_inches
    size_mm / 25.4
  end
end
