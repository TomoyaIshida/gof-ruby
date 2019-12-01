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

report = Report.new(PlainTextFormatter.new)
report.output_report

report.formatter = HTMLFormatter.new
report.output_report
