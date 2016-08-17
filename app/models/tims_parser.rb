class TimsParser
  DATA_URL = "https://data.tfl.gov.uk/tfl/syndication/feeds/tims_feed.xml?app_id=#{ENV['APP_ID']}&app_key=#{ENV['APP_KEY']}"

  def self.run
    [{lat: 51.503509, lng: 0.001312, comment: 'comments'}, {lat: 51.504509, lng: 0.002312, comment: 'comments'}]
  end
end
