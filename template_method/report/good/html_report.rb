class HTMLReport < Report
  def output_title
    puts "<title>#{@title}</title>"
  end

  def output_body_start
    puts '<body>'
  end

  def output_body
    @text.each do |line|
      puts "<p>#{line}</p>"
    end
  end

  def output_body_end
    puts '</body>'
  end
end

report = HTMLReport.new
report.output_report
