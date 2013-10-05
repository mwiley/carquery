module Carquery
  Make = BaseStruct.new :code, :title, :is_common, :country do

    def self.build raw
      code =      get_str raw['make_id']
      title =     get_str raw['make_display']
      is_common = get_boolean raw['make_is_common']
      country =   get_str raw['make_country']

      new code, title, is_common, country
    end
  end
end
