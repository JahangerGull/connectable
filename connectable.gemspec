# -*- encoding: utf-8 -*-
require File.expand_path('../lib/connectable/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jhanger Gul"]
  gem.email         = ["jahanger.gull@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "connectable"
  gem.require_paths = ["lib"]
  gem.version       = Connectable::VERSION

  gem.add_dependency "redis", ">= 2.1.1"
end
