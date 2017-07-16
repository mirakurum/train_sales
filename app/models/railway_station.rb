class RailwayStation < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }, uniqueness: true
end
