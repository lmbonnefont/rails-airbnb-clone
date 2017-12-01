class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :products, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_one :basket, dependent: :destroy
  mount_uploader :profil_picture, PhotoUploader
end
