require_dependency 'news_service/post_page/index'
require_dependency 'news_service/post_page/show'

class NewsService::PostsBaseController < NewsService::ApplicationController
  layout :detect_layout

  def index
    # TODO ページング

    @current_page = NewsService::PostPage::Index.new(NewsService::Post.all)

    render locals: {
      page: @current_page
    }
  end

  def show
    post = NewsService::Post.find(params[:id])
    @current_page = NewsService::PostPage::Show.new(post)

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
