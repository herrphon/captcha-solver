# -*- encoding: utf-8 -*-
# stub: ocr 0.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "ocr".freeze
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Miguel Adolfo Barroso".freeze]
  s.date = "2012-04-19"
  s.description = "Recognize text and characters from image files using web services.".freeze
  s.email = ["mabarroso@mabarroso.com".freeze]
  s.homepage = "https://github.com/mabarroso/ocr".freeze
  s.rubygems_version = "2.7.6".freeze
  s.summary = "OCR web services gateway for Ruby.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<savon>.freeze, [">= 0.9.9"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 1.5.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.7.0"])
    else
      s.add_dependency(%q<savon>.freeze, [">= 0.9.9"])
      s.add_dependency(%q<nokogiri>.freeze, [">= 1.5.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.7.0"])
    end
  else
    s.add_dependency(%q<savon>.freeze, [">= 0.9.9"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 1.5.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.7.0"])
  end
end
