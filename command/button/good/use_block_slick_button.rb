class SlickButton
  attr_accessor :command

  def initialize(&block)
    @command = block
  end

  def on_button_push
    @command.call if @command
  end
end

# executeメソッドの中身をブロックを用いて直接渡すことができる
# 複雑でない処理の場合はブロックを用い、複雑な処理の場合はCommandパターンを用いると良い
new_button = SlickButton.new do
end
