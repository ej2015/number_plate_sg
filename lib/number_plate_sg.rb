require "number_plate/version"
require "number_plate/sg/validator"
require "number_plate/sg/generator"
require "active_support/core_ext/string"
require "active_model"
require "number_plate/sg/active_model"

module NumberPlate

  class << self
    def validator(country)
      Object.const_get("NumberPlate::#{country}::Validator").new
    end

    def generator(country)
      Object.const_get("NumberPlate::#{country}::Generator").new
    end
  end



end
