# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubidium/imports'

Gem::Specification.new do |spec|
  spec.name          = "rubidium"
  spec.version       = Rubidium::VERSION
  spec.authors       = ["Matúš Tomlein"]
  spec.email         = ["matus@cs.au.dk"]
  spec.summary       = %q{A wrapper around the Californium CoAP server.}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/matus_tomlein/rubidium"
  spec.license       = "MIT"
  spec.platform      = "java"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "jbundler", "~> 0.7"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
end
