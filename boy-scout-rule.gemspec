lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'boy-scout-rule/version'

Gem::Specification.new do |spec|
  spec.name          = "boy-scout-rule"
  spec.version       = Boy::Scout::Rule::VERSION
  spec.authors       = ["Desmond Pompa Alarcon Rawls"]
  spec.email         = ["drawls@pivotal.io"]
  spec.summary       = "A code review tool."
  spec.description   = "Scientific analysis to predict developer sanity while working with your code."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-nav"
end
