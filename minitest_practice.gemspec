# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest_practice/version'

Gem::Specification.new do |spec|
  spec.name          = "minitest_practice"
  spec.version       = MinitestPractice::VERSION
  spec.authors       = ["z15021sn"]
  spec.email         = ["z15021sn@aiit.ac.jp"]

  spec.summary       = %q{This is just a practice.}
  spec.description   = %q{This is just a practice.}
  spec.homepage      = "https://github.com/nkmrshn/minitest_practice"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-minitest"
  spec.add_development_dependency "terminal-notifier-guard" if RUBY_PLATFORM.match(/darwin/)
  spec.add_development_dependency "coveralls"
end
