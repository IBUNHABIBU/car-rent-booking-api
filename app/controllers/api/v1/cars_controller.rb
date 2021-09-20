module Api
  module V1
   class CarsController < ApplicationController
    def index
     render json: Book.all
    end
   end
  end
end