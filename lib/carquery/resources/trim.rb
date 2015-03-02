module Carquery
  Trim = BaseStruct.new :id, :title, :make_code, :trim, :year, :body, :engine_position,
                        :engine_cc, :engine_cyl, :engine_type, :engine_valves_per_cyl,
                        :engine_power_ps, :engine_power_rpm, :engine_torque_nm, :engine_torque_rpm,
                        :engine_bore_mm, :engine_stroke_mm, :engine_compression, :engine_fuel,
                        :top_speed_kph, :speedup_0_to_100_kph, :drive, :transmission_type,
                        :seats, :doors, :weight_kg, :length_mm, :width_mm, :height_mm,
                        :wheelbase_mm, :lkm_hwy, :lkm_mixed, :lkm_city, :fuel_cap_l,
                        :mpg_city, :mpg_hwy, :mpg_mixed, :fuel_cap_g, :sold_in_us,
                        :co2, :make_title, :make_country do

    def self.build raw
      id =                    get_i   raw["model_id"]
      title =                 get_str raw["model_name"]
      make_code =             get_str raw["model_make_id"]
      trim =                  get_str raw["model_trim"]
      year =                  get_i   raw["model_year"]
      body =                  get_str raw["model_body"]
      engine_position =       get_str raw["model_engine_position"]
      engine_cc =             get_i   raw["model_engine_cc"]
      engine_cyl =            get_i   raw["model_engine_cyl"]
      engine_type =           get_str raw["model_engine_type"]
      engine_valves_per_cyl = get_i   raw["model_engine_valves_per_cyl"]
      engine_power_ps =       get_i   raw["model_engine_power_ps"]
      engine_power_rpm =      get_i   raw["model_engine_power_rpm"]
      engine_torque_nm =      get_i   raw["model_engine_torque_nm"]
      engine_torque_rpm =     get_i   raw["model_engine_torque_rpm"]
      engine_bore_mm =        get_f   raw["model_engine_bore_mm"]
      engine_stroke_mm =      get_f   raw["model_engine_stroke_mm"]
      engine_compression =    get_f   raw["model_engine_compression"]
      engine_fuel =           get_str raw["model_engine_fuel"]
      top_speed_kph =         get_i   raw["model_top_speed_kph"]
      speedup_0_to_100_kph =  get_f   raw["model_0_to_100_kph"]
      drive =                 get_str raw["model_drive"]
      transmission_type =     get_str raw["model_transmission_type"]
      seats =                 get_i   raw["model_seats"]
      doors =                 get_i   raw["model_doors"]
      weight_kg =             get_i   raw["model_weight_kg"]
      length_mm =             get_i   raw["model_length_mm"]
      width_mm =              get_i   raw["model_width_mm"]
      height_mm =             get_i   raw["model_height_mm"]
      wheelbase_mm =          get_i   raw["model_wheelbase_mm"]
      lkm_hwy =               get_f   raw["model_lkm_hwy"]
      lkm_mixed =             get_f   raw["model_lkm_mixed"]
      lkm_city =              get_f   raw["model_lkm_city"]
      fuel_cap_l =            get_i   raw["model_fuel_cap_l"]
      mpg_hwy =               get_f   raw["model_mpg_hwy"]
      mpg_city =              get_f   raw["model_mpg_city"]
      mpg_mixed =             get_f   raw["model_mpg_mixed"]
      fuel_cap_g =            get_f   raw["model_fuel_cap_g"]
      sold_in_us =            get_boolean raw["model_sold_in_us"]
      co2 =                   get_i   raw["model_co2"]
      make_title =            get_str raw["make_display"]
      make_country =          get_str raw["make_country"]

      new id, title, make_code, trim, year, body, engine_position, engine_cc,
          engine_cyl, engine_type, engine_valves_per_cyl, engine_power_ps,
          engine_power_rpm, engine_torque_nm, engine_torque_rpm, engine_bore_mm,
          engine_stroke_mm, engine_compression, engine_fuel, top_speed_kph,
          speedup_0_to_100_kph, drive, transmission_type, seats, doors, weight_kg,
          length_mm, width_mm, height_mm, wheelbase_mm, lkm_hwy, lkm_mixed, lkm_city,
          fuel_cap_l, mpg_city, mpg_hwy, mpg_mixed, fuel_cap_g, sold_in_us, co2,
          make_title, make_country
    end
  end
end
