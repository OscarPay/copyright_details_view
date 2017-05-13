# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'copyright_details_view/version'

Gem::Specification.new do |spec|
  spec.name = "copyright_details_view"
  spec.version = CopyrightDetailsView::VERSION
  spec.authors = ["Oscar Gpe. Pérez Ayuso"]
  spec.email = ["nike-o_94@hotmail.com"]

  spec.summary = %q{Various view specific methods for applications I use.}
  spec.description = %q{Provides generated HTML data for Rails applications.}
  spec.homepage = "https://github.com/OscarPay/copyright_details_view"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
