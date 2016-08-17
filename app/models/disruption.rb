class Disruption < ApplicationRecord
  validates :lat, :lng, :comment, presence: true

  def self.preview
    disruptions = []
    all.each do |disruption|
      disruptions << {latlng: [disruption.lat, disruption.lng], popup: disruption.comment}
    end
    disruptions
  end
end
