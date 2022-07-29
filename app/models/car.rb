class Car < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  validates :color, :engine, :year, :title, :price, :image, presence: true

  scope :recent, ->(max_limit = 8) { order('created_at').limit(max_limit) }

  def imageUrl
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end
end
