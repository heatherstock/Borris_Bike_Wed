class DockingStation
    attr_reader :bike

  def dock_bike(bike)
    @bike = bike
  end

  def release_bike
    if @bike == nil 
      raise StandardError.new("No bikes available")
    else
      Bike.new
    end
  end
end
