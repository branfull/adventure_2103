class Trail
  attr_reader :name,
              :level
  def initialize(trail_params)
    @name = trail_params[:name]
    @level = trail_params[:level]
    @length = trail_params[:length]
  end

  def length
    length_components = @length.split(' ')
    length_components[0].to_f
  end
end
