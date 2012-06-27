# -*- encoding: utf-8 -*-
require File.expand_path("../lib/forms_on_the_fly/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "forms_on_the_fly"
  s.version     = FormsOnTheFly::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kevin Farst"]
  s.email       = ["farst.6@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/forms_on_the_fly"
  s.summary     = "TODO: Write a gem summary"
  s.description = "TODO: Write a gem description"

  s.required_rubygems_version = ">= 0.0.1"
  s.rubyforge_project         = "forms_on_the_fly"

  s.add_dependency('rails',        '>= 3.0')
  s.add_dependency('diesel',       '~>0.1.5')

  s.add_development_dependency('rspec')
  s.add_development_dependency('formtastic')
  s.add_development_dependency('bundler',            '~> 1.1')
  s.add_development_dependency('appraisal',          '~> 0.4.1')
  s.add_development_dependency('cucumber-rails',     '~> 1.1.1')
  s.add_development_dependency('rspec-rails',        '~> 2.9.0')
  s.add_development_dependency('sqlite3')
  s.add_development_dependency('bourne',             '~> 1.1.2')
  s.add_development_dependency('timecop')
  s.add_development_dependency('capybara',           '~> 1.1.2')
  s.add_development_dependency('factory_girl_rails', '~> 3.1.0')
  s.add_development_dependency('shoulda-matchers',   '~> 1.1.0')
  s.add_development_dependency('database_cleaner')
  s.add_development_dependency('launchy')
  s.add_development_dependency('aruba',              '~> 0.4.11')
  s.add_development_dependency('jquery-rails',       '~> 2.0')

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
