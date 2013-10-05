require 'spec_helper'

describe Carquery do
  describe '.get_trims' do
    subject { described_class.get_trims }

    context 'when request succeed', vcr: { cassette_name: '/get_trims/successful' } do
      it { should be_an Array }
      it { should_not be_empty }

      it "should contain Carquery::Trim objects" do
        subject.first.should be_a Carquery::Trim
      end
    end
  end
end