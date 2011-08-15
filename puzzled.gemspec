# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "puzzled/version"

Gem::Specification.new do |s|
  s.name        = "puzzled"
  s.version     = Puzzled::VERSION
  s.authors     = ["Chris Hunt"]
  s.email       = ["huntca@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Generates scrambles for puzzles.}
  s.description = %q{Generates scrambles for the 3x3x3 (Rubik's Cube), Pyraminx, and Square-1.}

  s.rubyforge_project = "puzzled"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
