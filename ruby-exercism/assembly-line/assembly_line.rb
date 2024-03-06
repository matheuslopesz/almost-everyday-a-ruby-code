class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed < 5
      success_rate = 1
    elsif (@speed > 4 && @speed < 9)
      success_rate = 0.9
    elsif @speed == 9
      success_rate = 0.8
    else
      success_rate = 0.77
    end
    puts success_rate
    @speed * 221 * success_rate
  end
  def working_items_per_minute
    (production_rate_per_hour/60).floor
  end
end
