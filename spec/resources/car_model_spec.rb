require 'spec_helper'

describe Carquery::CarModel do
  describe '.build' do
    subject { described_class.build data }

    context "when valid data provided" do
      let(:data) { {"model_name"=>"021 C", "model_make_id"=>"ford"} }

      it { should be_a described_class }

      its(:title) { should eq "021 C" }
    end
  end
end