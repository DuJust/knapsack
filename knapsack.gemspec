# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'knapsack/version'

Gem::Specification.new do |spec|
  spec.name        = 'knapsack'
  spec.version     = Knapsack::VERSION
  spec.authors     = ['DuJust']
  spec.email       = ['du.just.it@gmail.com']
  spec.summary     = 'All-Spark is a gem to create a new ruby repo.'
  spec.description = 'All-Spark is a gem to create a new ruby repo.'
  spec.homepage    = ''
  spec.license     = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin$/) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)$/)
  spec.require_paths = ['lib']

  spec.add_dependency 'cane'
  spec.add_dependency 'rubocop'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-bundler'
  spec.add_development_dependency 'guard-rspec'
end
