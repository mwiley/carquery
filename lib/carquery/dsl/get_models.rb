module Carquery

  class << self

    # Returns car models by the manufacturer
    # Input: auto make code
    # Additional params:
    #   @year       [optional]  - omitting it will retrieve all model names ever produced by the manufacturer.
    #   @sold_in_us [optional]  - setting it to “1″ will restrict results to models sold in the USA.
    #   @body       [optional]  - including it will restrict results to models of the specified body type (SUV, Sedan, etc)
    # Usage:
    #   Carquery.get_models_for 'volvo', year: 2010 => [{:title=>"C30"}, {:title=>"C70"}, {:title=>"S40"}, ...]
    def get_models make_code, params={}
      params.merge! make: make_code
      response = request 'getModels', params
      response['Models'].map {|make| CarModel.build make }
    end

    alias_method :get_models_for, :get_models

  end

end