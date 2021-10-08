class CarSerializer < ActiveModel::Serializer
 attributes :id, :color, :engine, :year, :image, :url

 def image
   rails_blob_path(object.image, only_path: true) if object.image.attached?
 end
end