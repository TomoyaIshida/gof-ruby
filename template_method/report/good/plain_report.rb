class PlainReport < Report
  def output_title
    puts("***#{@title}***")
  end

  def output_body_start
    puts '-------------------'
  end

  def output_body
    @text.each do |line|
      puts(line)
    end
  end

  def output_body_end
    puts '-------------------'
  end
end

report = PlainReport.new
report.output_report
