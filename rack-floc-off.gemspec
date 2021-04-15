# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Gareth Rees"]
  gem.email         = ["gareth@garethrees.co.uk"]
  gem.description   = %q{Tells Google not to impose Federated Learning of Cohorts (FLoC) on users}
  gem.summary       = %q{Disables Google FLoC}
  gem.homepage      = "https://github.com/garethrees/rack-floc-off"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rack-floc-off"
  gem.require_paths = ["lib"]
  gem.version       = '0.0.1'

  gem.add_development_dependency('minitest')
  gem.add_development_dependency('rack-test')
  gem.add_runtime_dependency('rack')
end
