# NumberPlateSg

A little utility to validate a Singpaore number plate or to generate a random number

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'number_plate_sg'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install number_plate_sg

## Usage
Use the validator
```
  ##Initialize validator:
  validator =  NumberPlate.validator("SG")

  ##Check if it is valid:
  validator.is_valid?("EJ81D")
  #=> true
   
  validator.is_valid?("EJ81E")
  #=> false

  ##get the current country code
  validator.country
  #=> "SG"
```
Use the generator
```
  ##Initialize generator
  generator = NumberPlate.generator('SG')
  
  generator.generate
  #=> SFZ999K
```
## ActiveModel

A `NumberPlateSgValidator` is provided with this gem to be used with ActiveModel. 

```
class Vehicle < ActiveRecord::Base
  validates :plate_number, number_plate_sg: true 
  ...
end

```

## Command Line Interface
A CLI is provided to check the plate validity

```
$number_plate_sg validate EJ81D
$true

```
A CLI is also provided to generate a random number

```
$number_plate_sg generate
$SFZ999K
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/number_plate_sg.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

