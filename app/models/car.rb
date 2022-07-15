class Car < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  validates :color, :engine, :year, :title, :price, :image, presence: true
end
