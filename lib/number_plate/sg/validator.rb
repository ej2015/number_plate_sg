require_relative "base_validator"
require_relative "checksum"

module NumberPlate
  module SG
    class Validator < NumberPlate::SG::BaseValidator
      include NumberPlate::SG::Checksum

      def initialize
        @country = "SG"
      end

      def is_valid?(registration_number)
        super &&
          valid_length? &&
          valid_pattern? &&
          valid_checksum?
      end

      def valid_length?
        @license.length <= 8 && @license.length >= 4
      end

      def valid_pattern?
        0  == (/^[A-Z]{1,3}[1-9]{1}\d{0,3}[A-Z]$/ =~ @license)
      end

      def valid_checksum?
        checksum == @license[-1]
      end
    end
  end
end
