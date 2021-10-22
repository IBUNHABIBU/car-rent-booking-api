class Booking < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :model, presence: true
  validates :pickup, presence: true, uniqueness: { case_sensitive: true }
  validates :return_date, presence: true, uniqueness: { case_sensitive: true }
  validates :location, presence: true
end
