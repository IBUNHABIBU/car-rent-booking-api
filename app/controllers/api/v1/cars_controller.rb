module Api
  module V1
   class CarsController < ApplicationController
    def index
     render json: Car.all
    end

    def create
     car = Car.new(car_params)
    end

    private 

    def car_params
     params.require(:car).permit(:color, :engine, :year, model)
    end
   end
  end
end