$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "news_service/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "news_service"
  s.version     = NewsService::VERSION
  s.authors     = ["Ryunosuke SATO"]
  s.email       = ["tricknotes.rs@gmail.com"]
  s.summary       = %q{This is a news service client.}
  s.description   = %q{This is a news service client.}
  s.homepage      = 'https://github.com/bm-sms/daimon-news-service-client'
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
end
