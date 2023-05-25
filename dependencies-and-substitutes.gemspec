# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'dependencies-and-substitutes'
  s.version = '0.0.0'
  s.summary = "Demonstration of Eventide's Dependency and Mimic libraries"
  s.description = ' '

  s.authors = ['The Eventide Project']
  s.email = 'opensource@eventide-project.org'
  s.homepage = 'https://github.com/eventide-examples/dependencies-and-substitutes'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.3.3'

  s.add_development_dependency 'evt-dependency'
  s.add_development_dependency 'test_bench'
end
