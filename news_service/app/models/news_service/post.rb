class NewsService::Post
  include ActiveModel::Model

  attr_accessor :id, :title, :body, :as_html, :created_at, :updated_at

  class << self
    def all
      fetch_resource(resource_url)
    end

    def new_arrival
      all # XXX Implement API
    end

    def popular
      all # XXX Implement API
    end

    def find(id)
      fetch_resource([resource_url, id].join('/'))
    end

    private

    def resource_url
      URI.join(NewsService.service_url, ['sites', NewsService.site_token, 'posts'].join('/'))
    end

    def fetch_resource(url)
      response = HTTPClient.get(url)
      data = JSON.parse(response.body)

      data.is_a?(Array) ? data.map {|attrs| new(attrs) } : new(data)
    end
  end
end
