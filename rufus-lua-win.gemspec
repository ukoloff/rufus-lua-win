# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rufus/lua/win/version'

Gem::Specification.new do |spec|
  spec.name          = "rufus-lua-win"
  spec.version       = Rufus::Lua::Win::VERSION
  spec.authors       = ["Stas Ukolov"]
  spec.email         = ["ukoloff@gmail.com"]
  spec.description   = 'Provides Lua binary on Windows'
  spec.summary       = ''
  spec.homepage      = "https://github.com/ukoloff/rufus-lua-win"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rufus-lua"
  spec.add_development_dependency "appveyor-worker"
end
