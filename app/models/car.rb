class Car < ApplicationRecord
  belongs_to :user
  has_one_attached :main_image
  validate :acceptable_image
end
