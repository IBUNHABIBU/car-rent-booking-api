module Api
 module V1
   class BookingsController < ApplicationController
     def index
       bookings = Booking.all
       render json: BookingsRepresenter.new(bookings).as_json
     end

     def create
       booking = current_user.bookings.build(booking_params)
       if booking.save
         render json: { appointment: booking, status: :created }
       else
         render json: booking.errors.full_messages, status: :unproccessable_entity
       end
     end

     def destroy
       Booking.find(params[:id]).destroy!

       head :no_content
     end

     private

     def booking_params
       params.require(:booking).permit(:name, :model, :pickup, :return, :location)
     end
   end
 end
end
