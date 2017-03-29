# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ios_asset_extractor/version'

Gem::Specification.new do |spec|
  spec.name          = "ios_asset_extractor"
  spec.version       = IosAssetExtractor::VERSION
  spec.authors       = ["Forelax"]
  spec.email         = ["helloworldmkv@163.com"]

  spec.summary       = 'A Ruby wrapper for the iOS Asset Extractor(https://github.com/Marxon13/iOS-Asset-Extractor)'
  spec.description   = 'A Ruby wrapper for the iOS Asset Extractor(https://github.com/Marxon13/iOS-Asset-Extractor)'
  spec.homepage      = 'https://github.com/ForelaxX/ios_asset_extractor'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = "ios_asset_extractor.rb"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
