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
          render json: { errors: booking.errors.full_messages }
        end
      end

      def destroy
        Booking.find(params[:id]).destroy!

        head :no_content
      end

      private

      def booking_params
        params.require(:booking).permit(:name, :model, :pickup, :return_date, :location)
      end
    end
  end
end
