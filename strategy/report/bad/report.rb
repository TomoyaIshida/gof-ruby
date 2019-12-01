class Report
  def initialize(format)
    @title = '月次報告'
    @text = ['売上', '利益']
    @format = format
  end

  def output_report
    if @format == :plane
      puts '-------------------'
      puts(@title)
      @text.each do |line|
        puts(line)
      end
      puts '-------------------'
    elsif @format == :html
      puts "<title>#{@title}</title>"
      puts '<body>'
      @text.each do |line|
        puts "<p>#{line}</p>"
      end
      puts '</body>'
    else
      puts "No Template"
    end
  end
end

report = Report.new(:plane)
report.output_report

report = Report.new(:html)
report.output_report
