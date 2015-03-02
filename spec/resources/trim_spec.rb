require 'spec_helper'
require 'rspec/its'

describe Carquery::Trim do
  describe '.build' do
    subject { described_class.build data }

    context "when valid data provided" do
      let(:data) { {"model_id"=>"57610", "model_make_id"=>"acura", "model_name"=>"ILX", "model_trim"=>" Hybrid", "model_year"=>"2013", "model_body"=>"Sedan", "model_engine_position"=>"Front", "model_engine_cc"=>"1500", "model_engine_cyl"=>"4", "model_engine_type"=>"in-line", "model_engine_valves_per_cyl"=>"8", "model_engine_power_ps"=>"111", "model_engine_power_rpm"=>"5500", "model_engine_torque_nm"=>"172", "model_engine_torque_rpm"=>"3500", "model_engine_bore_mm"=>"73.0", "model_engine_stroke_mm"=>"89.0", "model_engine_compression"=>"10.8", "model_engine_fuel"=>"Gasoline", "model_top_speed_kph"=>nil, "model_0_to_100_kph"=>nil, "model_drive"=>"Front", "model_transmission_type"=>"CVT ", "model_seats"=>"5", "model_doors"=>"4", "model_weight_kg"=>"1356", "model_length_mm"=>"4550", "model_width_mm"=>"1794", "model_height_mm"=>"1412", "model_wheelbase_mm"=>"2670", "model_lkm_hwy"=>"4.8", "model_lkm_mixed"=>nil,  "model_fuel_cap_g"=>"13.2", "model_lkm_city"=>"5.0", "model_fuel_cap_l"=>"50", "model_mpg_hwy"=>"49", "model_mpg_city"=>"47", "model_mpg_mixed"=>nil, "model_sold_in_us"=>"1", "model_co2"=>nil, "model_make_display"=>nil, "make_display"=>"Acura", "make_country"=>"USA"} }

      it { should be_a described_class }

      its(:id)                   { should eq 57610 }
      its(:title)                { should eq "ILX" }
      its(:make_code)            { should eq "acura" }
      its(:trim)                 { should eq "Hybrid" }
      its(:year)                 { should eq 2013 }
      its(:body)                 { should eq "Sedan" }
      its(:engine_position)      { should eq "Front" }
      its(:engine_cc)            { should eq 1500 }
      its(:engine_cyl)           { should eq 4 }
      its(:engine_type)          { should eq "in-line" }
      its(:engine_valves_per_cyl){ should eq 8 }
      its(:engine_power_ps)      { should eq 111 }
      its(:engine_power_rpm)     { should eq 5500 }
      its(:engine_torque_nm)     { should eq 172 }
      its(:engine_torque_rpm)    { should eq 3500 }
      its(:engine_bore_mm)       { should eq 73.0 }
      its(:engine_stroke_mm)     { should eq 89.0 }
      its(:engine_compression)   { should eq 10.8 }
      its(:engine_fuel)          { should eq "Gasoline" }
      its(:top_speed_kph)        { should be_nil }
      its(:speedup_0_to_100_kph) { should be_nil }
      its(:drive)                { should eq "Front" }
      its(:transmission_type)    { should eq "CVT" }
      its(:seats)                { should eq 5 }
      its(:doors)                { should eq 4 }
      its(:weight_kg)            { should eq 1356 }
      its(:length_mm)            { should eq 4550 }
      its(:width_mm)             { should eq 1794 }
      its(:height_mm)            { should eq 1412 }
      its(:wheelbase_mm)         { should eq 2670 }
      its(:lkm_hwy)              { should eq 4.8 }
      its(:lkm_mixed)            { should be_nil }
      its(:lkm_city)             { should eq 5.0 }
      its(:fuel_cap_l)           { should eq 50 }
      its(:fuel_cap_g)           { should eq 13.2 }
      its(:mpg_city)             { should eq 47 }
      its(:mpg_hwy)              { should eq 49}
      its(:mpg_mixed)            { should be_nil }
      its(:sold_in_us)           { should eq true }
      its(:co2)                  { should be_nil }
      its(:make_title)           { should eq "Acura" }
      its(:make_country)         { should eq "USA" }

    end
  end
end
