# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "commenter/version"

Gem::Specification.new do |s|
  s.name                  = "commenter"
  s.version               = Commenter::VERSION
  s.platform              = Gem::Platform::RUBY
  s.author                = "Brooke Kuhlmann"
  s.email                 = "brooke@redalchemist.com"
  s.homepage              = "http://www.redalchemist.com"
  s.summary               = "Enhances ActiveRecord with polymorphic commenting."
  s.description           = "Enhances ActiveRecord with polymorphic commenting where any record can be made 'commentable'."
  s.license               = "MIT"
  s.post_install_message	= "(W): www.redalchemist.com. (T): @ralchemist."

  s.required_ruby_version = "~> 1.9.0"
  s.add_dependency "rails", ">= 3.0.0", "< 4.0.0"
  s.add_development_dependency "rake"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  
  s.files            = Dir["lib/**/*"]
  s.extra_rdoc_files = Dir["README*", "CHANGELOG*", "LICENSE*"]
  s.require_paths    = ["lib"]
end
