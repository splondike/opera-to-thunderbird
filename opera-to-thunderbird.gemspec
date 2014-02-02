# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "opera-to-thunderbird"
  spec.version       = "0.0.0"
  spec.authors       = ["Stefan Schneider-Kennedy"]
  spec.email         = ["code@stefansk.name"]
  spec.summary       = %q{Command line utility to convert Opera's contact files to Thunderbird compatible .ldif files.}
  spec.homepage      = ""
  spec.license       = "BSD 2-Clause"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "opera-contacts", "~> 0"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
