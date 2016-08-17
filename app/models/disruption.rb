class Disruption < ApplicationRecord
  validates :lat, :lng, :comment, presence: true
end
