class Park
  attr_reader :name,
              :trails
  def initialize(name)
    @name = name
    @trails = []
  end

  def add_trail(trail)
    @trails.push(trail)
  end

  def trails_shorter_than(distance)
    @trails.find_all do |trail|
      trail.length < distance
    end
  end

  def hikeable_miles
    @trails.sum do |trail|
      trail.length
    end
  end

  def trails_at_level(experience_level)
    @trails.find_all do |trail|
      trail.level == experience_level
    end
  end

  def trail_names_at_level(experience_level)
    trails_at_level(experience_level).map do |trail|
      trail.name
    end
  end

  def trail_levels_in_park
    @trails.map do |trail|
      trail.level
    end.uniq
  end

  def trails_by_level
    trail_levels_in_park.each_with_object({}) do |level, hash|
      hash[level] = trail_names_at_level(level)
    end
  end
end
