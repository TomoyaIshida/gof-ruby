class EnhancedWriter
  attr_reader :check_sum

  def initialize(path)
    @file = File.open(path, "w")
    @check_sum = 0
    @line_number = 1
  end

  def write_line(line)
    @file.print(line)
    @file.print("\n")
  end

  def numbering_write_line(data)
    write_line("#{@line_number}: #{data}")
    @line_number += 1
  end

  def timestamping_write_line(data)
    write_line("#{Time.new}: #{data}")
  end

  def close
    @file.close
  end
end

writer = EnhancedWriter.new('out.txt')
writer.write_line('飾り気のない一行')
writer.numbering_write_line('行番号付きの一行')
writer.timestamping_write_line('タイムスタンプ付きの一行')
