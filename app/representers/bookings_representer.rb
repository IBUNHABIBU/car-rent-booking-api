class bookingsRepresenter
   def initialize(bookings)
    @bookings = bookings
   end

   def as_json
    bookings.map do |booking|
     {
      id: booking.id,
      name: booking.name,
      pickup: booking.pickup,
      return: booking.return,
      location: booking.location
     }
    end
   end
   attr_reader :bookings
end