# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "omnibus-cartodb-infrastructure"
  s.version     = "1.0.0"
  s.authors     = ['Bloomberg DataVisualization team']
  s.summary     = %q{Omnibus project for all core CartoDB infrastructure}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'berkshelf', '~> 3.1.0'
  s.add_dependency 'omnibus', '~> 4.0'
end