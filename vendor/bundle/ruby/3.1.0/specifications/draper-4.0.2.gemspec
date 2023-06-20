# -*- encoding: utf-8 -*-
# stub: draper 4.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "draper".freeze
  s.version = "4.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jeff Casimir".freeze, "Steve Klabnik".freeze]
  s.date = "2021-05-27"
  s.description = "Draper adds an object-oriented layer of presentation logic to your Rails apps.".freeze
  s.email = ["jeff@casimircreative.com".freeze, "steve@steveklabnik.com".freeze]
  s.homepage = "http://github.com/drapergem/draper".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.2".freeze)
  s.rubygems_version = "3.3.26".freeze
  s.summary = "View Models for Rails".freeze

  s.installed_by_version = "3.3.26" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 5.0"])
    s.add_runtime_dependency(%q<actionpack>.freeze, [">= 5.0"])
    s.add_runtime_dependency(%q<request_store>.freeze, [">= 1.0"])
    s.add_runtime_dependency(%q<activemodel>.freeze, [">= 5.0"])
    s.add_runtime_dependency(%q<activemodel-serializers-xml>.freeze, [">= 1.0"])
    s.add_runtime_dependency(%q<ruby2_keywords>.freeze, [">= 0"])
    s.add_development_dependency(%q<ammeter>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_development_dependency(%q<active_model_serializers>.freeze, [">= 0.10"])
    s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_development_dependency(%q<simplecov>.freeze, ["= 0.17.1"])
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 5.0"])
    s.add_dependency(%q<actionpack>.freeze, [">= 5.0"])
    s.add_dependency(%q<request_store>.freeze, [">= 1.0"])
    s.add_dependency(%q<activemodel>.freeze, [">= 5.0"])
    s.add_dependency(%q<activemodel-serializers-xml>.freeze, [">= 1.0"])
    s.add_dependency(%q<ruby2_keywords>.freeze, [">= 0"])
    s.add_dependency(%q<ammeter>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<minitest-rails>.freeze, [">= 0"])
    s.add_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_dependency(%q<active_model_serializers>.freeze, [">= 0.10"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, ["= 0.17.1"])
  end
end
