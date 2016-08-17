class TimsParser
  DATA_URL = "https://data.tfl.gov.uk/tfl/syndication/feeds/tims_feed.xml?app_id=#{ENV['APP_ID']}&app_key=#{ENV['APP_KEY']}"

  def self.run
    [{latlng: [51.503509, 0.001312], popup: 'description 1'}, {latlng: [51.504509, 0.002312], popup: 'description 2'}]
  end
end
