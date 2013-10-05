module Carquery
  class BaseStruct < Struct
    def inspect
      to_h
    end
  end
end
