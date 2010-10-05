# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{commenter}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brooke Kuhlmann"]
  s.date = %q{2010-10-04}
  s.description = %q{Allows comments to be easily added to different models.}
  s.email = %q{aeonscope@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.rdoc",
     "README.rdoc"
  ]
  s.files = [
    "CHANGELOG.rdoc",
     "LICENSE.rdoc",
     "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "lib/commenter.rb",
     "lib/commenter/class_methods.rb",
     "lib/commenter/instance_methods.rb",
     "spec/acts_as_commentable_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/aeonscope/commenter}
  s.rdoc_options = ["--charset=UTF-8", "CHANGELOG.rdoc"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new("~> 1.8.7")
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Allows comments to be easily added to different models.}
  s.test_files = [
    "spec/acts_as_commentable_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.0.0"])
    else
      s.add_dependency(%q<rails>, ["~> 3.0.0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.0.0"])
  end
end

