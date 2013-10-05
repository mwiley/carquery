module Carquery

  class BaseStruct < Struct
    class << self

      protected

      def get_i str
        return nil if str.nil?
        str.to_i
      end

      def get_f str
        return nil if str.nil?
        str.to_f
      end

      def get_boolean str
        str == '1'
      end

      def get_str str
        str.to_s.strip
      end
    end
  end

end
