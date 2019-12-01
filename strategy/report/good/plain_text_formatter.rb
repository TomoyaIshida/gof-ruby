class PlainTextFormatter < Formatter
  def output_report(context)
    puts '-------------------'
    puts(context.title)
    context.text.each do |line|
      puts(line)
    end
    puts '-------------------'
  end
end
