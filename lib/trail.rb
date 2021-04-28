class Trail
  attr_reader :name,
              :level
  def initialize(trail_params)
    @name = trail_params[:name]
    @level = trail_params[:level]
  end
end
