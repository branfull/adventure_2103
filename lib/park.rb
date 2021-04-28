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

  def trail_levels_in_park
    @trails.map do |trail|
      trail.level
    end.uniq
  end
end
