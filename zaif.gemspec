# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zaif/version'

Gem::Specification.new do |spec|
  spec.name          = "zaif"
  spec.version       = Zaif::VERSION
  spec.authors       = ["Palon"]
  spec.email         = ["palon7@gmail.com"]
  spec.summary       = %q{Zaif API wrapper.}
  spec.description   = %q{Zaif API wrapper for monacoin/bitcoin trade.}
  spec.homepage      = "https://github.com/palon7/zaif-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'websocket-client-simple'
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~>0"
  spec.add_development_dependency "rspec", "~>0"
end
