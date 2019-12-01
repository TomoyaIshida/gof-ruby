class StringIOAdapter
  def initialize(string)
    @string = string
    @position = 0
  end

  def getc
    raise EOFError if eof?
    ch = @string[@position]
    @position += 1
    return ch
  end

  def eof?
    return @position >= @string.length
  end
end

encrypter = Encrypter.new('XYZZY')
# アダプターは既存のインターフェイスと必要なインターフェイスの橋渡しをするオブジェクト
reader = StringIOAdaper.new('We attack at dawn')
writer = File.open('out.txt', 'w')
encrypter.encrypt(reader, writer)
