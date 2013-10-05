require 'spec_helper'

describe Carquery do
  describe '.get_makes' do
    subject { described_class.get_makes }

    context 'when request succeed', vcr: { cassette_name: '/get_makes/successful' } do
      it { should be_an Array }
      it { should_not be_empty }

      it "should contain Carquery::Make objects" do
        subject.first.should be_a Carquery::Make
      end
    end
  end
end