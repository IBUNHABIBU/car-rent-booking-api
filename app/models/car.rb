class Car < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_one_attached :image
  belongs_to :user
  validates :color, presence: true
  validates :engine, presence: true
  validates :year, presence: true
  validates :car_model, presence: true
  validates :price, presence: true
  validates :image, attached: true, file_content_type: { allow: ['image/jpeg', 'image/png'] }
  
  def get_image_url
    url_for(self.image)
  end
end
