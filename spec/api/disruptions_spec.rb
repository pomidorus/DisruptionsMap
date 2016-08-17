require 'rails_helper'
require 'support/api_schema_matcher'

describe Disruptions::API, type: :request do
  describe 'GET /api/disruptions' do
    context 'response status' do
      it 'returns 200 status code' do
        get 'http://localhost:300/api/disruptions'
        expect(response.status).to eq (200)
      end
    end
    context 'response schema' do
      it 'returns the disruptions' do
        get 'http://localhost:300/api/disruptions'
        expect(response).to match_response_schema('disruptions')
      end
    end
  end
end
