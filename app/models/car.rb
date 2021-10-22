class Car < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_one_attached :image
  belongs_to :user
  validates :color, presence: true, uniqueness: { case_sensitive: true }
  validates :engine, presence: true, uniqueness: { case_sensitive: true }
  validates :year, presence: true, uniqueness: { case_sensitive: true }
  validates :car_model, presence: true, uniqueness: { case_sensitive: true }
  validates :price, presence: true, uniqueness: { case_sensitive: true }
end
