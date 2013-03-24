# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'by_star_mongoid/version'

Gem::Specification.new do |gem|
  gem.name          = "by_star_mongoid"
  gem.version       = ByStarMongoid::VERSION
  gem.authors       = ["simlegate"]
  gem.email         = ["simlegate@163.com"]
  gem.description   = %q{allows you to find Mongoid objects given certain date objects}
  gem.summary       = %q{allows you to find Mongoid objects given certain date objects}
  gem.homepage      = "https://github.com/simlegate/by_star_mongoid"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
