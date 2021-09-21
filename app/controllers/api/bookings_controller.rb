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
         render json: booking, status: :created
       else
         render json: booking.errors.full_messages, status: :unproccessable_entity
       end
     end

     def destroy
       Booking.find(params[:id]).destroy!

       head :no_content
     end

     private

     def Bookings_params
       params.require(:Bookings).permit(:color, :engine, :year, model)
     end
   end
 end
end
