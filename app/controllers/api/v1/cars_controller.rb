module Api
  module V1
   class CarsController < ApplicationController
    def index
     render json: Car.all
    end

    def create
     car = Car.new(car_params)
     if car.save
      render json: car, status: :created
     else 
      render json: book.erros.full_messages, status: :unproccessable_entity
     end
    end

    def destroy
     Car.find(params[:id]).destroy!
     
     head :no_content
   
    end

    private 

    def car_params
     params.require(:car).permit(:color, :engine, :year, model)
    end

   end
  end
end