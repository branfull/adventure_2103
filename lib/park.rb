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
end
