require "news_service/engine"

module NewsService
  cattr_accessor :service_url
  cattr_accessor :site_token # XXX ひとまず `Site#id` を設定する

  class << self
    def configure
      yield self
    end
  end

  configure do |config|
    # Default config
    config.service_url = 'http://localhost:3000'
    config.site_token  = '1'
  end
end
