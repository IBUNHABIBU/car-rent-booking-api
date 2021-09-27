class Booking < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: { case_sensitive: true }
  validates :model, presence: true, uniqueness: { case_sensitive: true }
  validates :pickup, presence: true
  validates :return, presence: true, uniqueness: { case_sensitive: true }
  validates :location, presence: true, uniqueness: { case_sensitive: true }
end
