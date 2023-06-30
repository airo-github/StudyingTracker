# -*- encoding: utf-8 -*-
# stub: bootstrap4-kaminari-views 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "bootstrap4-kaminari-views".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kamil Dzierbicki".freeze]
  s.date = "2018-12-13"
  s.description = "Bootstrap 4 styling for Kaminari gem".freeze
  s.email = ["dzierbicki.kamil@outlook.com".freeze]
  s.homepage = "http://github.com/KamilDzierbicki/bootstrap4-kaminari-views".freeze
  s.rubygems_version = "3.3.26".freeze
  s.summary = "Bootstrap 4 styling for Kaminari gem".freeze

  s.installed_by_version = "3.3.26" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<kaminari>.freeze, [">= 0.13"])
    s.add_runtime_dependency(%q<rails>.freeze, [">= 3.1"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
  else
    s.add_dependency(%q<kaminari>.freeze, [">= 0.13"])
    s.add_dependency(%q<rails>.freeze, [">= 3.1"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
  end
end
