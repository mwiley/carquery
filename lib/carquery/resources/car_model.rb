module Carquery
  CarModel = BaseStruct.new :title do

    def self.build raw
      new raw['model_name']
    end
  end
end
