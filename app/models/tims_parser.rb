class TimsParser
  DATA_URL = "https://data.tfl.gov.uk/tfl/syndication/feeds/tims_feed.xml?app_id=#{ENV['APP_ID']}&app_key=#{ENV['APP_KEY']}"

  def self.run
    disruptions = []
    response = RestClient.get DATA_URL
    if response.code == 200
      xml = Nokogiri::XML.parse(response) do |config|
        config.noblanks
      end
      xml.css('Disruptions').children.each do |disruption|
        disruptions << parse(disruption)
      end
    end

    disruptions
  end

  private

  def self.parse disruption
    lat, lng = disruption.at_css("CauseArea DisplayPoint Point coordinatesLL").content.split(',').reverse
    comment = disruption.at_css("comments").content
    {lat: lat, lng: lng, comment: comment}
  end
end
