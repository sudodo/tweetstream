# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tweetstream/version'

Gem::Specification.new do |spec|
  spec.name        = 'tweetstream'
  spec.version     = TweetStream::VERSION

  spec.authors     = ['Michael Bleigh', 'Steve Agalloco']
  spec.email       = ['michael@intridea.com', 'steve.agalloco@gmail.com']
  spec.description = %q{TweetStream is a simple wrapper for consuming the Twitter Streaming API.}
  spec.summary     = spec.description
  spec.homepage    = 'http://github.com/intridea/tweetstream'
  spec.licenses    = ['MIT']

  spec.add_dependency 'daemons', '~> 1.1'
  spec.add_dependency 'em-twitter', '~> 0.2'
  spec.add_dependency 'em-http-request', '~> 1.0.2'
  #spec.add_dependency 'twitter', '~> 4.5'
  spec.add_dependency 'twitter', :git => 'git@github.com:sudodo/twitter.git'
  spec.add_dependency 'yajl-ruby', '~> 1.1'
  spec.add_development_dependency 'bundler', '~> 1.0'

  spec.files = %w(.yardopts CHANGELOG.md CONTRIBUTING.md LICENSE.md README.md Rakefile tweetstream.gemspec)
  spec.files += Dir.glob("lib/**/*.rb")
  spec.files += Dir.glob("spec/**/*")
  spec.test_files = Dir.glob("spec/**/*")

  spec.require_paths = ["lib"]
end
