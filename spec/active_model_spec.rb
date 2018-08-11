require "spec_helper"

if defined?(ActiveModel)

  class Vehicle < VehicleBase
    validates :plate, number_plate_sg: true
  end


  describe Vehicle do
    it "is valid with valid plate from Country" do
      vehicle = Vehicle.new("SCK38Z")
      expect(vehicle).to be_valid
    end

    it "is invalid with invalid plate from Country" do
      vehicle = Vehicle.new("E2212")
      expect(vehicle).to_not be_valid
    end
  end


end
