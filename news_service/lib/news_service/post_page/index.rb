require_dependency 'news_service/post_page/base'

module NewsService
  module PostPage
    class Index < Base
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
