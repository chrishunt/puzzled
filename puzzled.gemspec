# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "puzzled/version"

Gem::Specification.new do |s|
  s.name        = "puzzled"
  s.version     = Puzzled::VERSION
  s.authors     = ["Chris Hunt"]
  s.email       = ["huntca@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Rubik's Cube scramble generator.}
  s.description = %q{Generates scrambles for the Mini Cube (2x2x2), Rubik's Cube (3x3x3), Revenge Cube (4x4x4), and Professor's Cube (5x5x5).}

  s.rubyforge_project = "puzzled"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
