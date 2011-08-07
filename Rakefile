require 'bundler'
require 'rake/testtask'
require 'rake/rdoctask'
require File.join(File.dirname(__FILE__), 'lib', 'forms_on_the_fly', 'version')

Bundler::GemHelper.install_tasks


desc 'Default: run unit tests.'
task :default => :test

desc 'Test the rails-ckeditor plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the rails-ckeditor plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Forms on the Fly'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.textile')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "forms_on_the_fly"
    gemspec.version = Ckeditor::Version.dup
    gemspec.summary = "User-generated forms"
    gemspec.description = "Creates user-generated forms."
    gemspec.email = "galeta.igor@gmail.com"
    gemspec.homepage = "http://github.com/kfarst/forms_on_the_fly"
    gemspec.authors = ["Kevin Farst"]
    gemspec.files = FileList["[A-Z]*", "{app,config,lib}/**/*"]
    gemspec.rubyforge_project = "forms_on_the_fly"
    
    gemspec.add_dependency('rspec-rails', ">= 2.0")
  end
  
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end
