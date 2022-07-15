module Api
  module V1
    class CarsController < ApplicationController
      def index
        cars = Car.all
        render json: CarsRepresenter.new(cars).as_json
      end

      def create
        @car = current_user.cars.build(car_params)
        if @car.save
          render json: { result: @car, status: :created }
        else
          render json: { errors: @car.errors.full_messages }
        end
      end

      def show
        @car = Car.find(params[:id])
        render json: CarRepresenter.new(@car).as_json
      end

      def destroy
        Car.find(params[:id]).destroy!
        head :no_content
      end

      private

      def car_params
        params.require(:car).permit(:color, :engine, :year, :title, :price, :image)
      end
    end
  end
end
