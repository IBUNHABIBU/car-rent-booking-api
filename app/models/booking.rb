class Booking < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: { case_sensitive: true }
  validates :model, presence: true, uniqueness: { case_sensitive: true }
  validates :pickup, presence: true
  validates :return_date, presence: true, uniqueness: { case_sensitive: true }
  validates :location, presence: true, uniqueness: { case_sensitive: true }
end
