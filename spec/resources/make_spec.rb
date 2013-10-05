require 'spec_helper'

describe Carquery::Make do
  describe '.build' do
    subject { described_class.build data }

    context "when valid data provided" do
      let(:data) { {"make_id"=>"abarth", "make_display"=>"Abarth", "make_is_common"=>"0", "make_country"=>"Italy"} }

      it { should be_a described_class }

      its(:code)  { should eq "abarth" }
      its(:title) { should eq "Abarth" }
      its(:is_common) { should eq false }
      its(:country) { should eq "Italy" }
    end
  end
end