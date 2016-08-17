module Disruptions
  class API < Grape::API
    version 'v1', using: :header, vendor: 'TIMS'
    format :json
    prefix :api

    resource :disruptions do
      desc 'Return a list of current disruptions'
      get '/' do
        {markers: Disruption.preview}
      end
    end
  end
end
