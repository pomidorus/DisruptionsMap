require 'rails_helper'

describe Disruptions::API, type: :request do
  context 'GET /api/disruptions' do
    def dispatch
      get 'http://localhost:300/api/disruptions'
    end
    subject { dispatch }
    describe 'response' do
      it 'returns 200 status code' do
        expect(subject).to eq (200)
      end
    end
  end
end
