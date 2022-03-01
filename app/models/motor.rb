class Motor < ApplicationRecord
  has_many :reservations, through: :motor_reservations
  has_many :motor_reservations
end
