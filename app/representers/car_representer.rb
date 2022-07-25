class CarRepresenter
  def initialize(car)
    @car = car
  end

  def as_json
    {
      id: car.id,
      color: car.color,
      # engine: car.engine,
      # year: car.year,
      # title: car.title,
      # price: car.price
      # image: car.image,
      image_url: car.image_url
    }
  end

  private

  attr_reader :car
end
