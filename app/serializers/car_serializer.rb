# class CarSerializer < ActiveModel::Serializer
#  attributes :id, :color, :engine, :year, :car_image, :url

#  def car_image
#   Rails.application.routes.url_helpers.rails_blob_path(self.car_image, only_path: true)
#  end
# end