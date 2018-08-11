require 'thor'
require 'number_plate_sg'

module NumberPlate
  module SG
    class CLI < Thor
      desc "validate", "validate if a PLATE is valid"
      def validate(plate)
        validator = NumberPlate.validator('SG')
        puts(validator.is_valid? plate)
      end

      desc "generate", "generate a random plate"
      def generate
        puts NumberPlate.generator('SG').generate
      end
    end
  end
end
