require_dependency 'news_service/post_page/base'

module NewsService
  module PostPage
    class Show < Base
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
