class CarRepresenter
  def initialize(car)
    @car = car
  end

  def as_json
    {
      id: car.id,
      color: car.color,
      engine: car.engine,
      year: car.year,
      car_model: car.car_model,
      price: car.price
    }
  end

  private

  attr_reader :car
end
