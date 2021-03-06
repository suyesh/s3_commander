# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 's3_patron/version'
require 's3_patron/banner'

Gem::Specification.new do |spec|
  spec.name          = "s3_patron"
  spec.version       = S3Patron::VERSION
  spec.authors       = ["Suyesh Bhandari"]
  spec.email         = ["suyeshb@gmail.com"]

  spec.summary       = "Command-line utility to manage S3 written in Ruby"
  spec.description   = "Command-line utility to manage S3 written in Ruby"
  spec.homepage      = "https://github.com/suyesh/s3_patron"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
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
  #spec.post_install_message = S3Patron::Banner.new.to_s
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency 'thor', '~> 0.19.4'
  spec.add_dependency 'aws-sdk', '~> 2.6', '>= 2.6.35'
  spec.add_dependency 'colorize'
end
