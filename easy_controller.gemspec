# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easy_controller/version'

Gem::Specification.new do |spec|
  spec.name          = "easy_controller"
  spec.version       = "0.1.0"
  spec.authors       = ["jonny"]
  spec.email         = ["mars131@gmail.com"]
  spec.summary       = %q{EasyController is a controller plugin which help you write less code in common controllers}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/jonnyzheng/easy_controller"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
