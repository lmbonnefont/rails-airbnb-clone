class Product < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  belongs_to :user
  validates :price, presence: true, numericality: { greater_than_or_equal: 0 }
  validates :description, presence: true
  # validates :photo, presence: true
  validates :address, presence: true
  mount_uploader :photo, PhotoUploader
end
