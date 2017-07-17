class RailCar < ApplicationRecord
  belongs_to :train
  has_many :seats
end
