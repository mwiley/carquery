module Carquery
  Make = BaseStruct.new :code, :title, :is_common, :country do

    def self.build raw
      new get_str(raw['make_id']),
          get_str(raw['make_display']),
          get_boolean(raw['make_is_common']),
          get_str(raw['make_country'])
    end

  end
end
