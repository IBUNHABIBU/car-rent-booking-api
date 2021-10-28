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
      title: car.title,
      price: car.price
    }
  end

  private

  attr_reader :car
end
