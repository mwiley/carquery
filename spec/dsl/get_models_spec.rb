require 'spec_helper'

describe Carquery do
  describe '.get_models' do
    subject { described_class.get_models make_code }

    context "when valid make code given" do
      let(:make_code) { 'ford' }

      context 'when request succeed', vcr: { cassette_name: '/get_models/successful' } do
        it { should be_an Array }
        it { should_not be_empty }

        it "should contain Carquery::CarModel objects" do
          subject.first.should be_a Carquery::CarModel
        end
      end
    end
  end
end
