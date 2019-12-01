class SimpleLogger
  ERROR = 1
  WARNING = 2
  INFO = 3

  @@instance = SimpleLogger.new
  @@log = File.open("log.txt", "w")
  @@level = WARNING

  def error(msg)
    @@log.puts(msg)
    @@log.flush
  end

  def warning(msg)
    @@log.puts(msg) if @@level >= WARNING
  end

  def info(msg)
    @@log.puts(msg) if @@level >= INFO
    @@log.flush
  end

  def self.instance
    @@instance
  end

  private_class_method :new
end

# private_class_method :newでnewをprivateにすることでインスタンスの生成を制御する
SimpleLogger.new
# > private method `new' called for SimpleLogger:Class (NoMethodError)

SimpleLogger.instance.info('xxxの処理をしました')
