lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tsrc/version'

Gem::Specification.new do |spec|
  spec.name          = "tsrc"
  spec.description   = %q{TypeScript source files}
  spec.summary       = %q{TypeScript source files}

  spec.authors       = ["Valentin Vasilyev"]
  spec.email         = ["valentin.vasilyev@outlook.com"]
  spec.homepage      = 'https://github.com/valve/tsrc'
  spec.license       = 'Apache 2.0 License'

  spec.files         = `git ls-files`.split($\)
  spec.require_path  = ['lib']
  spec.version       = TypeScript::Src::VERSION

  spec.add_development_dependency 'rake'
end
