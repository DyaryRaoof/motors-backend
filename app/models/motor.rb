class Motor < ApplicationRecord
  has_many :motor_reservations, dependent: :destroy
  has_many :reservations, through: :motor_reservations, dependent: :destroy
end
