# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'string_methods/version'

Gem::Specification.new do |spec|
  spec.name          = "string_methods"
  spec.version       = StringMethods::VERSION
  spec.authors       = ["Cleiviane Costa"]
  spec.email         = ["costa.cleiviane@gmail.com"]

  spec.summary       = "Adds useful methods to String class"
  spec.homepage      = "https://github.com/cleicar/string_methods"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
