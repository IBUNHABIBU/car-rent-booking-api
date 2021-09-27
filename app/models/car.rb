class Car < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :color, presence: true, uniqueness: { case_sensitive: true }
  validates :engine, presence: true, uniqueness: { case_sensitive: true }
  validates :year, presence: true
  validate :acceptable_image

  def acceptable_image
    return unless image.attached?
  end
end
