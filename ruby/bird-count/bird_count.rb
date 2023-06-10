class BirdCount
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    @birds_per_day.last(2).first
  end

  def total
     @birds_per_day.sum
  end

  def busy_days
    busy_days_count = 0
    @birds_per_day.each do |birds_per_day|
      if birds_per_day > 5
        busy_days_count +=1
      end
    end

    return busy_days_count if busy_days_count == 0
    
    busy_days_count + 1
  end

  def day_without_birds?
    @birds_per_day.include? 0
  end
end
