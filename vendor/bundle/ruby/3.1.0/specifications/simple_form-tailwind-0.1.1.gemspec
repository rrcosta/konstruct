# -*- encoding: utf-8 -*-
# stub: simple_form-tailwind 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "simple_form-tailwind".freeze
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/tarellel/simple_form-tailwind/issues", "changelog_uri" => "https://github.com/tarellel/simple_form-tailwind/blob/master/CHANGELOG.md", "source_code_uri" => "https://github.com/tarellel/simple_form-tailwind" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brandon Hicks".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-12-31"
  s.description = "A generator to add a simple_form config setup for tailwindCSS based forms".freeze
  s.email = ["tarellel@gmail.com".freeze]
  s.homepage = "https://github.com/tarellel/simple_form-tailwind".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.3.7".freeze
  s.summary = "A basic rails generator for adding a simpleform config setup for tailwindCSS based forms".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<railties>.freeze, [">= 4.0"])
    s.add_runtime_dependency(%q<simple_form>.freeze, [">= 5.0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.17", "<= 3"])
    s.add_development_dependency(%q<rake>.freeze, [">= 7.0", "<= 20.0"])
  else
    s.add_dependency(%q<railties>.freeze, [">= 4.0"])
    s.add_dependency(%q<simple_form>.freeze, [">= 5.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.17", "<= 3"])
    s.add_dependency(%q<rake>.freeze, [">= 7.0", "<= 20.0"])
  end
end
