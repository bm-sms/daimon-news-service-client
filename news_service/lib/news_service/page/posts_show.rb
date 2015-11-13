require_dependency 'news_service/page/base'

module NewsService
  module Page
    class PostsShow < Base
      attr_reader :post

      def initialize(post)
        @post = post
      end

      def title
        post.title
      end

      def body
        post.as_html.html_safe
      end
    end
  end
end
