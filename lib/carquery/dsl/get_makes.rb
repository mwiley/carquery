module Carquery

  # Returns auto makes
  # Additional params:
  #   @year       [optional] - all makes which produced a model in the specified year
  #   @sold_in_us [optional] - setting it to “1″ will restrict results to models sold in the USA.
  # Usage:
  #   Carquery.get_makes year: 2009 => [{:code=>"acura", :title=>"Acura", :is_common=>true, :country=>"USA"}, ...]
  def self.get_makes params={}
    response = request 'getMakes', params
    response['Makes'].map {|make| Make.build make }
  end

end