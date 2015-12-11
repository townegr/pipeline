# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pipeline/version'

Gem::Specification.new do |spec|
  spec.name          = "pipeline"
  spec.version       = Pipeline::VERSION
  spec.authors       = ["Greg Towne"]
  spec.email         = ["gtowne@rbmtechnologies.com"]
  spec.summary       = %q{Data in, data out.}
  spec.description   = %q{Black box for providing meaningful data.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
end
