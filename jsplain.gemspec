lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jsplain/version'

Gem::Specification.new do |spec|
  spec.name          = "jsplain"
  spec.version       = Jsplain::VERSION
  spec.author        = "David Campbell"
  spec.email         = "david@mrcampbell.org"
  spec.description   = %q{Ruby-ism to explain a complex structure without diving in too deep.}
  spec.summary       = %q{Ruby-ism to explain a complex JSON structure without diving in too deeply.
Simply call it against any object and it will dive through it.}
  spec.homepage      = "https://github.com/dacamp/jsplain"
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
