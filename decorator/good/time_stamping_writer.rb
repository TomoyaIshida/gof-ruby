class TimeStampingWriter < WriterDecorator
  def write_line(line)
    @real_writer.write_line("#{Time.new}: #{line}")
  end
end

writer = TimeStampingWriter.new(NumberingWriter.new(SimpleWriter.new('test.txt')))
writer.write_line('Hello world')
