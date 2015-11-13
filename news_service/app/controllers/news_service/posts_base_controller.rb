require_dependency 'news_service/page/posts_index'
require_dependency 'news_service/page/posts_show'

class NewsService::PostsBaseController < NewsService::ApplicationController
  layout :detect_layout

  def index
    # TODO ページング

    @current_page = NewsService::Page::PostsIndex.new(NewsService::Post.all)

    render locals: {
      page: @current_page
    }
  end

  def show
    post = NewsService::Post.find(params[:id])
    @current_page = NewsService::Page::PostsShow.new(post)

    render locals: {
      page: @current_page
    }
  end

  private

  def current_page
    @current_page
  end
  helper_method :current_page
end
