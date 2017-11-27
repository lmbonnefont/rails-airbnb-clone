class Product < ApplicationRecord
  belongs_to :user
  validates :price, presence: true, numericality: { greater_than_or_equal: 0 }
  validates :description, presence: true
  validates :photo, presence: true
  validates :address, presence: true
end
