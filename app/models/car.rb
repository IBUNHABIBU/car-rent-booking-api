class Car < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  validates :color, :engine, :year, :title, :price, :image, presence: true

  def imageUrl
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end
end
