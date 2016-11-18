class Manufacturer < ApplicationRecord
  has_many :models
  has_many :cars, through: :model

  validates :name, presence: true
end
