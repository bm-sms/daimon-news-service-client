class NewsService::Post < NewsService::Base
  attr_accessor :id, :title, :body, :as_html, :created_at, :updated_at

  class << self
    def all
      response = HTTPClient.get(resource_url)
      data = JSON.parse(response.body)

      data.map {|attrs| new(attrs) }
    end

    def find(id)
      response = HTTPClient.get([resource_url, id].join('/'))
      attrs = JSON.parse(response.body)

      new(attrs)
    end

    private

    def resource_url
      URI.join(service_url, ['sites', site_token, 'posts'].join('/'))
    end
  end
end
