class MixTask < Composite::Task
  def initialize
    super('Mix that batter up!')
  end

  def get_time_required
    3.0
  end
end

MixTask.new.get_time_required
