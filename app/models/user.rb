class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :reservations

  validates :name, presence: true
  validates :name, length: { minimum: 3 }
end
