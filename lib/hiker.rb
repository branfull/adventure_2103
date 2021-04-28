class Hiker
  attr_reader :name,
              :experience_level,
              :snacks
  def initialize(name, experience_level)
    @name = name
    @experience_level = experience_level
    @snacks = {}
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
end
