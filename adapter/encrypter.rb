class Encrypter
  def initialize(key)
    @key = key
  end

  def encrypt(reader, writer)
    key_index = 0
    while not reader.eof?
      clear_char = reader.getc
      encrypted_char = clear_char ^ @key[key_index]
      writer.putc encrypted_char
      key_index = (key_index + 1) % @key.size
    end
  end
end

encrypter = Encrypter.new('my secret key')
reader = File.open('message.txt')
writer = File.open('message.encrypted', 'w')
encrypter.encrypt(reader, writer)
