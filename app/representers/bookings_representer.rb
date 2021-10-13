class BookingsRepresenter
   def initialize(bookings)
    @bookings = bookings
   end

   def as_json
    bookings.map do |booking|
     {
      id: booking.id,
      name: booking.name,
      pickup: booking.pickup,
      return_date: booking.return_date,
      location: booking.location
     }
    end
   end
   attr_reader :bookings
end