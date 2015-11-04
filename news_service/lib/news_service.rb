require "news_service/engine"
require "httpclient"

module NewsService
  cattr_accessor :site_name
  cattr_accessor :service_url
  cattr_accessor :site_token # XXX ひとまず `Site#id` を設定する
  cattr_accessor :parent_controller

  class << self
    def configure
      yield self
    end
  end

  configure do |config|
    # Default config
    config.site_name   = 'Demo site'
    config.service_url = 'http://localhost:3000'
    config.site_token  = '1'
    config.parent_controller  = -> {
      begin
        ::ApplicationController
      rescue NameError
        ActionController::Base
      end
    }
  end
end
