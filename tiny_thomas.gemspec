# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "tiny_thomas/version"

Gem::Specification.new do |s|
  s.name        = "tiny_thomas"
  s.version     = TinyThomas::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Derek Willis"]
  s.email       = ["dwillis@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A very thin client for the TinyThom.as service.}
  s.description = %q{Making Library of Congress temporary URLs permanent.}

  s.rubyforge_project = "tiny_thomas"
  
  s.add_runtime_dependency "json"
  s.add_runtime_dependency 'cobravsmongoose'
  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "shoulda"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
