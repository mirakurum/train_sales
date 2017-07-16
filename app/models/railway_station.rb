class RailwayStation < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }, uniqueness: true

  has_many :trains, foreign_key: :current_station_id
  has_many :railway_stations_routes
  has_many :routes, trough: :railway_stations_routes
end