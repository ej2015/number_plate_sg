$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "number_plate_sg"

if defined?(ActiveModel)
  class VehicleBase
    include ActiveModel::Validations

    attr_accessor :plate

    def initialize(plate)
      @plate = plate
    end
  end
end
