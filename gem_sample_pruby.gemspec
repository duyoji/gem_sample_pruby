# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gem_sample_pruby/version'

Gem::Specification.new do |spec|
  spec.name          = "gem_sample_pruby"
  spec.version       = GemSamplePruby::VERSION
  spec.authors       = ["Tsuyoshi Maeda"]
  spec.email         = ["oasis_tsuyoshi@yahoo.co.jp"]
  spec.description   = %q{this is description}
  spec.summary       = %q{this is summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]


  spec.add_runtime_dependency "nokogiri"
  spec.add_runtime_dependency "json", ">= 1.7.3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "manifest"
end
