module Disruptions
  class API < Grape::API
    version 'v1', using: :header, vendor: 'TIMS'
    format :json
    prefix :api

    resource :disruptions do
      desc 'Return a list of current disruptions'
      get '/' do
        {markers: [{latlng: [51.503509, 0.001312], popup: 'Traffic is heavy and slow moving on A12 southbound and A13 westbound towards the southbound tunnel. A12 tailback through Eastway Tunnel to Ruckholt Road (Olympic Park). A13 tailback to Goresbrook Interchange at Dagenham. A102 northbound traffic is queuing from Sun In The Sands Roundabout.'}]}
      end
    end
  end
end
