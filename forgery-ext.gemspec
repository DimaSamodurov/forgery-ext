# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "forgery-ext/version"

Gem::Specification.new do |s|
  s.name        = "forgery-ext"
  s.version     = ForgeryExt::VERSION
  s.authors     = ["Dima Samodurov"]
  s.email       = ["dmitriy.samodurov@sap.com"]
  s.homepage    = ""
  s.summary     = %q{ Additional dictionaries and methods to Forgery gem. }
  s.description = %q{ Additional dictionaries and methods to Forgery gem. Dictionaries extracted from https://github.com/ClintKrollwood/forgery/ }

  s.rubyforge_project = "forgery-ext"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_runtime_dependency "forgery"
end
