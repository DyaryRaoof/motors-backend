class MotorReservation < ApplicationRecord
  belongs_to :motor
  belongs_to :reservation
end