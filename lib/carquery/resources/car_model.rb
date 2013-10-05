module Carquery
  CarModel = BaseStruct.new :title do

    def self.build raw
      title = get_str raw['model_name']
      new title
    end
  end
end
