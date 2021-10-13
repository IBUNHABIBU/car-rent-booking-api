class Booking < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :model, presence: true
  validates :pickup, presence: true
  validates :return_date, presence: true
  validates :location, presence: true
end
