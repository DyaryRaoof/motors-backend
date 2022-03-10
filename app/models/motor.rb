class Motor < ApplicationRecord
  has_many :motor_reservations, dependent: :destroy
  has_many :reservations, through: :motor_reservations, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :image, presence: true
end
