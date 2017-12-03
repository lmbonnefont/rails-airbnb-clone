class Product < ApplicationRecord

  belongs_to :user
  belongs_to :basket, optional: true

  validates :price, presence: true, numericality: { greater_than_or_equal: 0 }
  validates :description, presence: true

  mount_uploader :photo, PhotoUploader
  has_one :message, dependent: :destroy
end
