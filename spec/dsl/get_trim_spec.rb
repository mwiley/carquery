require 'spec_helper'

describe Carquery do
  describe '.get_trim' do
    subject { described_class.get_trim model_id }

    context "when valid model id given" do
      let(:model_id) { 57610 }

      context 'when request succeed', vcr: { cassette_name: '/get_trim/successful' } do
        it { should be_a Carquery::Trim }
      end
    end

    context "when invalid model id given", vcr: { cassette_name: '/get_trim/not_found' } do
      let(:model_id) { 1923123 }

      it "should raise error" do
        expect { subject }.to raise_error "Not found"
      end
    end
  end
end