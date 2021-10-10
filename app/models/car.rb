class Car < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_one_attached :image
  belongs_to :user
  validates :color, presence: true
  validates :engine, presence: true
  validates :year, presence: true
  validates :image, presence: true
  validates :car_model, presence: true
  validates :price, presence: true

  def get_image_url
    url_for(self.image)
  end
end
