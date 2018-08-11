module NumberPlate
  module SG
    class BaseValidator

      attr_reader :country

      def is_valid?(registration_number)
        setup(registration_number) if registration_number.present?
        @license.present?
      end

      private
      def setup(registration_number)
        @license = registration_number.gsub(/\s/, "").upcase
        @letters = @license[/[A-Z]+/]
        @numerals = @license[/\d+/]
      end

    end
  end
end
