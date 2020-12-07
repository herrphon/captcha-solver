# -*- encoding: utf-8 -*-
# stub: ocr_space 2.3.7 ruby lib

Gem::Specification.new do |s|
  s.name = "ocr_space".freeze
  s.version = "2.3.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Suyesh Bhandari".freeze]
  s.bindir = "exe".freeze
  s.date = "2017-01-30"
  s.description = "Free Online OCR for Ruby - Convert images to text ".freeze
  s.email = ["suyeshb@gmail.com".freeze]
  s.executables = ["ocrspace".freeze]
  s.files = ["exe/ocrspace".freeze]
  s.homepage = "https://github.com/suyesh/ocr_space".freeze
  s.licenses = ["MIT".freeze]
  s.post_install_message = "\n\n               _______  _______  _______     _______  _______  _______  _______  _______\n              (  ___  )(  ____ \\(  ____ )   (  ____ \\(  ____ )(  ___  )(  ____ \\(  ____ \\\n              | (   ) || (    \\/| (    )|   | (    \\/| (    )|| (   ) || (    \\/| (    \\/\n              | |   | || |      | (____)|   | (_____ | (____)|| (___) || |      | (__\n              | |   | || |      |     __)   (_____  )|  _____)|  ___  || |      |  __)\n              | |   | || |      | (\\ (            ) || (      | (   ) || |      | (\n              | (___) || (____/\\| ) \\ \\__ _ /\\____) || )      | )   ( || (____/\\| (____/\\\n              (_______)(_______/|/   \\__/(_)\\_______)|/       |/     \\|(_______/(_______/\n\n              Learn more at http://ocr.space/\n            ".freeze
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Free Online OCR for Ruby - Convert images to text".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.13"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<json>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<httparty>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<httmultiparty>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<colorize>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.13"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<json>.freeze, [">= 0"])
      s.add_dependency(%q<httparty>.freeze, [">= 0"])
      s.add_dependency(%q<httmultiparty>.freeze, [">= 0"])
      s.add_dependency(%q<colorize>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.13"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<json>.freeze, [">= 0"])
    s.add_dependency(%q<httparty>.freeze, [">= 0"])
    s.add_dependency(%q<httmultiparty>.freeze, [">= 0"])
    s.add_dependency(%q<colorize>.freeze, [">= 0"])
  end
end
