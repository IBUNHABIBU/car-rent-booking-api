module Api
  module V1
   class CarsController < ApplicationController
    def index
     render json: Car.all
    end
   end
  end
end