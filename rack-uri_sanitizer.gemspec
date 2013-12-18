# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/uri_sanitizer/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-uri_sanitizer"
  spec.version       = Rack::URISanitizer::VERSION
  spec.authors       = ["Cédric FABIANSKI"]
  spec.email         = ["cfabianski@me.com"]
  spec.description   = %q{Rack::URISanitizer is a Rack middleware which cleans up } <<
                       %q{trailing % characters in request URI.}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/cfabianski/rack-uri_sanitizer"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_development_dependency "bacon"
  spec.add_development_dependency "bacon-colored_output"
end
