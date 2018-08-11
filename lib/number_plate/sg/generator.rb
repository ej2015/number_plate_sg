require_relative "base_generator"
require_relative "checksum"

module NumberPlate
  module SG 
    class Generator < NumberPlate::SG::BaseGenerator
      include NumberPlate::SG::Checksum

      def initialize
        @country = "SG"
      end

      def generate
        letters + numerals + checksum
      end

      def prefix
        'S'
      end

      def letters 
        @letters = prefix + random_letters
      end

      def numerals
        @numerals =  rand(1..9999).to_s
      end

      private
      def random_letters
        (0..rand(2)).map do
          rand(65..90).chr
        end
      end
    end
  end
end
