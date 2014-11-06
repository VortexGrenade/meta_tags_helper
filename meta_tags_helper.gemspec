lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meta_tags_helper/version'

Gem::Specification.new do |spec|
  spec.name          = 'meta_tags_helper'
  spec.version       = MetaTagsHelper::VERSION
  spec.authors       = ['Okhlopkov Anatoly']
  spec.email         = ['ohlopkov0211@gmail.com']
  spec.summary       = ''
  spec.description   = ''
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rails', '~> 4'

  spec.add_development_dependency 'bundler', '~> 1'
  spec.add_development_dependency 'rake', '~> 10'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'rspec-rails'
end
