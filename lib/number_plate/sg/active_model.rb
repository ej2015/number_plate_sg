module ActiveModel
  module Validations
    class NumberPlateSgValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)

        val = ::NumberPlate.validator('SG')

        record.errors.add attribute, (options[:message] || "is not a valid number plate") unless val.is_valid?(value)
      end
    end
  end
end
