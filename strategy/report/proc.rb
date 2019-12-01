class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(&formatter)
    @title = '月次報告'
    @text = ['売上', '利益']
    @formatter = formatter
  end

  def output_report
    @formatter.call(self)
  end
end

PLAIN_TEXT_FORMATTER = lambda do |context|
  puts '-------------------'
  puts(context.title)
  context.text.each do |line|
    puts(line)
  end
  puts '-------------------'
end

HTML_FORMATTER = lambda do |context|
  puts "<title>#{context.title}</title>"
  puts '<body>'
  context.text.each do |line|
    puts "<p>#{line}</p>"
  end
  puts '</body>'
end

report = Report.new(&PLAIN_TEXT_FORMATTER)
report.output_report

report = Report.new(&HTML_FORMATTER)
report.output_report
