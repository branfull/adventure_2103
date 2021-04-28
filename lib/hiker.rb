class Hiker
  attr_reader :name,
              :experience_level,
              :snacks,
              :parks_visited
  def initialize(name, experience_level)
    @name = name
    @experience_level = experience_level
    @snacks = {}
    @parks_visited = []
  end

  # make @snacks.keys.indclude helper method if
  # time allows
  def pack(item, quantity)
    if @snacks.keys.include?(item)
      @snacks[item] += quantity
    else
      @snacks[item] = quantity
    end
  end

  def visit(park)
    @parks_visited.push(park)
  end
end
