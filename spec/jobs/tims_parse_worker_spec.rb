require 'rails_helper'

describe TimsParseWorker do
  let(:job)  { TimsParseWorker.new }

  describe '#perform' do
    subject { job.perform }

    context 'when we have disruptions' do
      it 'creates new disruptions' do
        expect { subject }.to change { Disruption.count }
      end
    end
  end

end
