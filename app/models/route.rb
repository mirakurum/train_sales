class Route < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }, uniqueness: true

  has_many :railway_stations_routes
  has_many :railway_stations, trough: :railway_stations_routes
end
