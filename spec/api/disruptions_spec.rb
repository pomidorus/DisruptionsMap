require 'rails_helper'

describe Disruptions::API, type: :request do

  describe 'GET /api/disruptions' do

    def dispatch
      get 'http://localhost:300/api/disruptions'
    end

    subject { dispatch }

    describe 'response' do
      it { expect(subject).to eq (200) }
    end
  end
end
