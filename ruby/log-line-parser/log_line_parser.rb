class LogLineParser
  LEVELS = ['[INFO]:' , '[WARNING]:', '[ERROR]:']

  def initialize(line)
    @line = line
  end

  def message
    @line.gsub(LEVELS[0], "").gsub(LEVELS[1], "").gsub(LEVELS[2], "").strip
  end

  def log_level
    @line.gsub(message, "").gsub("[", "").gsub("]", "").gsub(":", "").downcase.strip
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
