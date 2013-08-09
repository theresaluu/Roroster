# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mongomapper-paperclip/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sylvain Niles"]
  gem.email         = ["sylvain.niles@gmail.com"]
  gem.description   = %q{Makes paperclip work with mongomapper}
  gem.summary       = %q{fixes all the things!}
  gem.homepage      = "https://github.com/sylvainsf/mongomapper-paperclip/"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mongomapper-paperclip"
  gem.require_paths = ["lib"]
  gem.version       = Mongomapper::Paperclip::VERSION
  gem.add_dependency 'paperclip', '~> 3.4.1'
  gem.add_development_dependency 'rake'
end
