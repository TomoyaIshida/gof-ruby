class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(formatter)
    @title = '月次報告'
    @text = ['売上', '利益']
    @formatter = formatter
  end

  def output_report
    @formatter.output_report(self)
  end
end

class PlainTextFormatter
  def output_report(context)
    puts '-------------------'
    puts(context.title)
    context.text.each do |line|
      puts(line)
    end
    puts '-------------------'
  end
end

class HTMLFormatter
  def output_report(context)
    puts "<title>#{context.title}</title>"
    puts '<body>'
    context.text.each do |line|
      puts "<p>#{line}</p>"
    end
    puts '</body>'
  end
end

report = Report.new(PlainTextFormatter.new)
report.output_report

report.formatter = HTMLFormatter.new
report.output_report
