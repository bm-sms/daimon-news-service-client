module NewsService
  module PostPage
    class Base
      # NOTE ユーザ定義のクラスを受け取るようにするとカスタマイズが容易なのでは…？

      def title
        raise NotImplementedError
      end

      def site_name
        NewsService.site_name
      end

      def page_title
        "#{site_name} | #{title}"
      end
    end
  end
end
