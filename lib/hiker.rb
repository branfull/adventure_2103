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

  def item_packed?(item)
    snack_keys = @snacks.keys
    snack_keys.include?(item)
  end

  def pack(item, quantity)
    if item_packed?(item)
      @snacks[item] += quantity
    else
      @snacks[item] = quantity
    end
  end

  def visit(park)
    if !@parks_visited.include?(park)
      @parks_visited.push(park)
    end
  end

  def possible_trails
    @parks_visited.flat_map do |park|
      park.trails_at_level(@experience_level)
    end
  end

  def favorite_snack_object
    @snacks.max_by do |item, quantity|
      quantity
    end
  end

  def favorite_snack
    favorite_snack_object[0]
  end
end
