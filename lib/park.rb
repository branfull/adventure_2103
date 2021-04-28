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
end
