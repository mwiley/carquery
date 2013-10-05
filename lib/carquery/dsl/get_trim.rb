module Carquery

  class << self

    # Returns car model trim by specified id
    # Input: auto make code
    # Optional params: none
    # Usage:
    #   Carquery.get_trim 12343 => #<struct Carquery::Trim id=12343, title="Tempra", make_code="fiat", trim="1.6", ...>
    def get_trim id
      response = request 'getModel', model: id
      Trim.build response
    end

  end

end