class CarSerializer < ActiveModel::Serializer
 attributes :id, :color, :engine, :year, :image, :url

 def image
  Rails.application.routes.url_helpers.rails_blob_path(self.image, only_path: true)
 end
end