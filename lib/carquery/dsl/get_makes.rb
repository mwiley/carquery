module Carquery

  # Returns auto makes
  # input:
  #   @year[optional] - all makes which produced a model in the specified year
  #   @sold_in_us [optional] - setting it to “1″ will restrict results to models sold in the USA.
  def self.get_makes params={}
    response = request 'getMakes', params
    response['Makes'].map {|make| Make.build make }
  end

end