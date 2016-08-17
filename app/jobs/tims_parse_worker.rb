class TimsParseWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  recurrence { minutely(5) }

  def perform
    disruptions = TimsParser.run
    disruptions.each do |disruption|
      Disruption.create!(disruption)
      # throw exception not valid data - send to api or airbrake
    end
  end
end
