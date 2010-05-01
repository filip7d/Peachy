# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'peachy/version'

Gem::Specification.new do |s|
  s.name = "peachy"
  s.version = Peachy::VERSION

  s.authors = ["NJ Pearman"]
  s.email = ["n.pearman@gmail.com"]
  s.description = <<DESCRIPTION
Capybara is an XML slurper that sits on to of existing XML parsers.  It dynamically 
creates object-style hierachies for simple ingration of XML data sources.
DESCRIPTION

  s.files = Dir.glob("{lib,spec}/**/*") + %w(README.rdoc)
  s.extra_rdoc_files = ["README.rdoc"]

  s.homepage = "http://github.com/njpearman/peachy"
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.4.0"
  s.summary = "Peachy gives a very simple object-style interface on top of an XML DOM."

  s.add_runtime_dependency("nokogiri", [">= 1.3.3"])
end
