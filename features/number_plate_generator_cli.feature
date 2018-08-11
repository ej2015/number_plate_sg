Feature: NumberPlateSg Generator
  run numer_plate_sg generator as a CLI

	Scenario: generator
		When I run `number_plate_sg generate`
		Then the output should match /^[A-Z]{1,3}[1-9]{1}\d{0,3}[A-Z]$/ 
