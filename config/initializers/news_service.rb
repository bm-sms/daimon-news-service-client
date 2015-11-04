NewsService.configure do |config|
  config.site_name   = 'Demo site'
  config.service_url = ENV.fetch('NEWS_SERVICE_URL', 'http://localhost:3000')
  config.site_token  = ENV.fetch('NEWS_SERVICE_TOKEN', '1')
end
