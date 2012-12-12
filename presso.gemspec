# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'presso/version'

Gem::Specification.new do |spec|
  spec.name          = "presso"
  spec.version       = Presso::VERSION
  spec.authors       = ["John Feminella"]
  spec.email         = ["jxf@jxf.me"]
  spec.description   = "Provides a number of reasonable wrappers for Nanoc."
  spec.summary       = "Sensible helpers for Nanoc."
  spec.homepage      = ""

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  dependency_entries = [
    ['nanoc']
  ]

  dependency_entries.each do |de|
    spec.add_dependency *de
  end
end
