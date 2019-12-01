class MakeBatterTask < CompositeTask
  def initialize
    super('Make batter')
    add_subtask(AddDryIngredientsTask.new)
    add_subtask(MixTask.new)
  end
end
