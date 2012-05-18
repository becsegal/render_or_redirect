$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "version"

Gem::Specification.new do |s|
  s.name = "render_or_redirect"
  s.version = RenderOrRedirect::VERSION
  s.summary = %q{Render based on format. If a redirect specified, will redirect for html format, otherwise includes url in response for a json response.}
  s.files = Dir["{lib}/**/*"] + ["README"]
  s.require_paths = ["lib"]
  s.add_dependency "rails"
  
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "guard-spork"
end