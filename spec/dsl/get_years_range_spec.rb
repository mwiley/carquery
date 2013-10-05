require 'spec_helper'

describe Carquery do
  describe '.get_years_range' do
    subject { described_class.get_years_range }

    context 'when request succeed', vcr: { cassette_name: '/get_years_range/successful' } do
      it { should be_an Range }

      it "should have proper year numbers" do
        subject.should eq 1940..2013
      end
    end
  end
end