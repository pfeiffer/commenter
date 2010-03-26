require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "acts_as_commentable"
    gem.summary = "Allows comments to be easily added to different models."
    gem.description = "Allows comments to be easily added to different models."
    gem.authors = ["Brooke Kuhlmann"]
    gem.email = "aeonscope@gmail.com"
    gem.homepage = "http://github.com/aeonscope/acts_as_commentable"
		gem.required_ruby_version = ">= 1.8.6"
		gem.add_dependency "rails", ">= 2.3.2"
		gem.rdoc_options << "CHANGELOG.rdoc"
		gem.files = FileList["[A-Z]*", "{bin,lib,generators,rails_generators,spec}/**/*"]
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end


task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION.yml')
    config = YAML.load(File.read('VERSION.yml'))
    version = "#{config[:major]}.#{config[:minor]}.#{config[:patch]}"
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "acts_as_commentable #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

