# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'number_plate/version'

Gem::Specification.new do |spec|
  spec.name          = "number_plate_sg"
  spec.version       = NumberPlateSg::VERSION
  spec.authors       = ["Edgar"]
  spec.email         = ["zorro.ej@gmail.com"]

  spec.summary       = %q{A little utility for Singpaore number plate.}
  spec.description   = %q{It can validate a number or generate a random number.}
  spec.homepage      = "https://github.com/ej2015/number_plate_sg.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">=4.2"
  spec.add_dependency "activemodel", ">=4.2"
  spec.add_dependency "thor"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry-byebug", "~>3.6.0"
  spec.add_development_dependency "cucumber", "~>3.1.0"
  spec.add_development_dependency "aruba", "~>0.14.0"
end
