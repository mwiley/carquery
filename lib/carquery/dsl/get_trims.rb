module Carquery

  class << self

    # Returns trim data for models meeting specified criteria.
    # Input: auto make code
    # Optional params:
    #   @make             - Make code
    #   @model            - Model Name
    #   @body             - Coupe, Sedan, SUV, Pickup, Crossover, Minivan, etc.
    #   @doors            - number of doors
    #   @drive            - Front, Rear, AWD, 4WD, etc
    #   @engine_position  - Front, Middle, Rear
    #   @engine_type      - V, in-line, etc
    #   @fuel_type        - Gasoline, Diesel, etc
    #   @full_results     - 1 by default. Set to 0 to include only basic year / make /model / trim data (improves load times)
    #   @keyword          - Keyword search. Searches year, make, model, and trim values
    #   @min_cylinders    - Minimum Number of cylinders
    #   @min_lkm_hwy      - Maximum fuel efficiency (highway, l/100km)
    #   @min_power        - Minimum engine power (PS)
    #   @min_top_speed    - Minimum Top Speed (km/h)
    #   @min_torque       - Minimum Torque (nm)
    #   @min_weight       - Minimum Weight (kg)
    #   @min_year         - Earliest Model Year
    #   @max_cylinders    - Maximum Number of cylinders
    #   @max_lkm_hwy      - Minimum fuel efficiency (highway, l/100km)
    #   @max_power        - Minimum engine power (HP)
    #   @max_top_speed    - Maximum Top Speed (km/h)
    #   @max_torque       - Maximum Torque (nm)
    #   @max_weight       - Maximum Weight (kg)
    #   @max_year         - Latest Model Year
    #   @seats            - Number of Seats
    #   @sold_in_us       - 1(sold in US), 0(not sold in US)
    #   @year             - Model Year
    # Usage:
    #   Carquery.get_trims 'volvo', year: 2010 => [#<struct Carquery::CarModel title="120">, ...]
    # Notes:
    #   Results are sorted by year, make, model, and trim. Results are limited to 500 records.
    def get_trims params={}
      response = request 'getTrims', params
      response['Trims'].map {|make| Trim.build make }
    end

  end

end