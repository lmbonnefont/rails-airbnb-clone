class Message < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_many :reponses, dependent: :destroy
end
