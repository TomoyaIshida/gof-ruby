class Report
  attr_reader :title, :text
  def initialize
    @title = '月次報告'
    @text = ['売上', '利益']
  end

  def output_report
    output_title
    output_body_start
    output_body
    output_body_end
  end

  def output_title
    raise 'Called abstract method: output_title'
  end

  def output_body_start
  end

  def output_body
    raise 'Called abstract method: output_body'
  end
  
  def output_body_end
  end
end
