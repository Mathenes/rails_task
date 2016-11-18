module CarsHelper

  def setup_car(car)
    car.model ||= Model.new
    car
  end

end
