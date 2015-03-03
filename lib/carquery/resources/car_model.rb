module Carquery
  CarModel = BaseStruct.new :title do

    def self.build raw
      new get_str(raw['model_name'])
    end
    
  end
end
