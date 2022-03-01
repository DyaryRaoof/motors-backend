class Reservation < ApplicationRecord
  belongs_to :user
  has_many :motor_reservations
  has_many :motors, through: :motor_reservations
end
