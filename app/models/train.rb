class Train < ApplicationRecord
  validates :tnumber, presence: true, length: { minimum: 3 }, uniqueness: true
end
