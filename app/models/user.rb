class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :products, dependent: :destroy
  validates :email, uniqueness: true, presence: true
  validates :encrypted_password, presence: true
  validates :surname, presence: true
  validates :name, presence: true
end
