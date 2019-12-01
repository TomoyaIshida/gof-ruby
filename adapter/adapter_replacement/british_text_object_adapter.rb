# Adapterパターンを使った解決方法
class BritishTextObjectAdapter < TextObject
  def initialize(bto)
    @bto = bto
  end

  def text
    return @bto.string
  end

  def size_inches
    return @bto.size_mm
  end 
end
