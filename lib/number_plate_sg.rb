require "number_plate/version"
require "number_plate/sg/validator"
require "number_plate/sg/generator"
require "active_support/core_ext/string"
require "active_model"
require "number_plate/sg/active_model"

module NumberPlate

  class << self
    def validator
      NumberPlate::SG::Validator.new
    end

    def generator
      NumberPlate::SG::Generator.new
    end
  end



end
