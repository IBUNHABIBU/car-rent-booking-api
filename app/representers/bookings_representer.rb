class BookingsRepresenter
  def initialize(bookings)
    @bookings = bookings
  end

  def as_json
    bookings.map do |booking|
      {
        id: booking.id,
        name: booking.name,
        model: booking.model,
        pickup: booking.pickup.strftime('%Y-%m-%d %H:%M:%S'),
        return_date: booking.return_date.strftime('%Y-%m-%d  %H:%M:%S'),
        location: booking.location
      }
    end
  end
  attr_reader :bookings
end
