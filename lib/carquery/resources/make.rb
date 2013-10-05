module Carquery
  Make = BaseStruct.new :code, :title, :is_common, :country do

    def self.build raw
      code =  raw['make_id']
      title = raw['make_display']
      is_common = raw['make_is_common'] == '1'
      country = raw['make_country']

      new code, title, is_common, country
    end
  end
end
