require_dependency 'news_service/post_page/index'
require_dependency 'news_service/post_page/show'

class NewsService::PostsController < NewsService::ApplicationController
  def index
    # TODO ページング

    render locals: {
      page: NewsService::PostPage::Index.new(NewsService::Post.all)
    }
  end

  def show
    post = NewsService::Post.find(params[:id])

    render locals: {
      page: NewsService::PostPage::Show.new(post)
    }
  end
end
