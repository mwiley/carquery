module Carquery

  class << self

    # Returns range of available years from the CarQuery database.
    # Input: none
    # Usage:
    #   Carquery.get_years_range => 1941..2012
    def get_years_range
      response = request 'getYears'
      min = response["Years"]["min_year"].to_i
      max = response["Years"]["max_year"].to_i
      min..max
    end
  end

end