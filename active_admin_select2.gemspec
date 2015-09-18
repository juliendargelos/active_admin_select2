$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'active_admin_select2/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'activeadmin_select2'
  s.version     = ActiveAdminSelect2Filters::VERSION
  s.authors     = ['Julien Palmas']
  s.email       = ['julien@palmas.me']
  s.homepage    = 'http://www.crx.io'
  s.summary     = 'Select2 active admin filters and inputs for associations'
  s.license     = 'MIT'

  s.files = Dir[
    '{app,config,db,lib}/**/*',
    'MIT-LICENSE',
    'Rakefile',
    'README.rdoc'
  ]

  s.add_dependency 'rails', '~> 4.2.0'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'bower'
  s.add_development_dependency 'sass-rails', '~> 4.0.3'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'awesome_print'

end
