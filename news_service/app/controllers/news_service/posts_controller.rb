class NewsService::PostsController < NewsService::ApplicationController
  layout :detect_layout

  def index
    @posts = NewsService::Post.all
  end

  def show
    @post = NewsService::Post.find(params[:id])
  end
end
