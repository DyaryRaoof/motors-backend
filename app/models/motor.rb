class Motor < ApplicationRecord
  has_many :motor_reservations
  has_many :reservations, through: :motor_reservations
end
