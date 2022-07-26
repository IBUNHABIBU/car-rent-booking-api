class CarsRepresenter
  def initialize(cars)
    @cars = cars
  end

  def as_json
    cars.map do |car|
      {
        id: car.id,
        color: car.color,
        engine: car.engine,
        year: car.year,
        title: car.title,
        price: car.price,
        imageUrl: car.imageUrl
      }
    end
  end

  private

  attr_reader :cars
end
