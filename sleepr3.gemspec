# coding: utf-8
require File.expand_path('../lib/sleepr/version', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sleepr3/version'

Gem::Specification.new do |spec|
  spec.name          = "sleepr3"
  spec.version       = Sleepr3::VERSION
  spec.authors       = ["Cayden Jacobs"]
  spec.email         = ["cayden.jacobs@yahoo.com"]

  spec.summary       = %q{A warning so people will logoff and go to bed!}
  spec.description   = %q{Used to point out when people usinf our app are doing so after hours and should just got to sleep}
  spec.homepage      = "http://github.com/caydn/sleepr3"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
