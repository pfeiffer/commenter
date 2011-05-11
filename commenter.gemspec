# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "commenter/version"

Gem::Specification.new do |s|
  s.name        = "commenter"
  s.version     = Commenter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brooke Kuhlmann"]
  s.email       = ["brooke@redalchemist.com"]
  s.homepage    = "http://www.redalchemist.com"
  s.summary     = "Enhances ActiveRecord with polymorphic commenting."
  s.description = "Enhances ActiveRecord with polymorphic commenting where any record can be made 'commentable'."

  s.rdoc_options << "CHANGELOG.rdoc"
  s.add_dependency "rails", "~> 3.0.0"
  s.add_development_dependency "rspec"
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{|file| File.basename file}
  s.require_paths = ["lib"]
end
