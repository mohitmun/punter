# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'punter/version'

Gem::Specification.new do |spec|
  spec.name          = "punter"
  spec.version       = Punter::VERSION
  spec.authors       = ["Mohit M"]
  spec.email         = ["mohitcrox@gmail.com"]

  spec.summary       = "(cross)db client you always wanted"
  spec.description   =  "(cross)db client you always wanted"
  spec.homepage      = "https://mohitmun.github.io/punter"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   << 'punter'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "activerecord"
  spec.add_runtime_dependency "sqlite3"
  spec.add_runtime_dependency "awesome_print"
end
