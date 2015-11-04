require_dependency 'news_service/page/base'

module NewsService
  module Page
    class PostsIndex < Base
      attr_reader :posts

      def initialize(posts)
        @posts = posts
      end

      def title
        '記事一覧'
      end
    end
  end
end
