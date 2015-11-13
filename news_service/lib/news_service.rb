require "news_service/engine"
require "httpclient"

module NewsService
  cattr_accessor :service_url
  cattr_accessor :site_token # XXX ひとまず `Site#id` を設定する
  cattr_accessor :detect_layout_proc
  cattr_accessor :parent_controller

  class << self
    def configure
      yield self
    end

    def controller(name, &block)
      controller_name = "#{name}_controller"

      require_dependency Engine.root.join('app/controllers/news_service', controller_name)

      controller_class = const_get(controller_name.camelize)

      controller_class.prepend Module.new(&block)
    end
  end

  configure do |config|
    # Default config
    config.service_url = 'http://localhost:3000'
    config.site_token  = '1'
    config.detect_layout_proc = ->(controller) { 'application' }
    config.parent_controller  = -> {
      begin
        ::ApplicationController
      rescue NameError
        ActionController::Base
      end
    }
  end
end
