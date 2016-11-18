class Car < ApplicationRecord
  has_one :model, dependent: :destroy, inverse_of: :car
  accepts_nested_attributes_for :model

  validates  :image, :engine_size, :speed, :acceleration, :model, presence: true

  delegate :name, to: :model

  mount_uploader :image, ImageUploader
end
