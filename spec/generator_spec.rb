require "spec_helper"

describe NumberPlate::SG::Generator do

  let(:generator) {described_class.new}
  let(:validator) { NumberPlate.validator('SG') }

  describe "#generator" do
    it "returns a valid plate number" do
      expect(validator.is_valid? generator.generate).to eq true
    end
  end


end
