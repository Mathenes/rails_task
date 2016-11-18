class Model < ApplicationRecord
  belongs_to :car, dependent: :destroy, inverse_of: :model
  belongs_to :manufacturer

  validates :name, :manufacturer_id, :car, presence: true

  delegate :name, to: :manufacturer, prefix: true
end
