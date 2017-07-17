class RailCar < ApplicationRecord
  validates :number, presence: true
  validates :seat, :rc_type, presence: true

  belongs_to :train
  has_many :seats
end
