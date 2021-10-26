class Car < ApplicationRecord
  belongs_to :user
  validates :color, presence: true
  validates :engine, presence: true
  validates :year, presence: true
  validates :title, presence: true
  validates :price, presence: true
end
