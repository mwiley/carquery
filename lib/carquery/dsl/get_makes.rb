module Carquery

  # Returns auto makes
  # Optional params:
  #   @year       [optional] - all makes which produced a model in the specified year
  #   @sold_in_us [optional] - setting it to “1″ will restrict results to models sold in the USA.
  # Usage:
  #   Carquery.get_makes year: 2009 => [#<struct Carquery::Make code="abarth", title="Abarth", is_common=false, country="Italy">, ...]
  def self.get_makes params={}
    response = request 'getMakes', params
    response['Makes'].map {|make| Make.build make }
  end

end