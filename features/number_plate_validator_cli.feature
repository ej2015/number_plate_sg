Feature: NumberPlateSg
  run numer_plate_sg as a CLI

	Scenario: validate a plate 
		When I run `number_plate_sg validate ej81d`
		Then the output should contain "true" 

		When I run `number_plate_sg validate ej881d`
		Then the output should contain "false" 
