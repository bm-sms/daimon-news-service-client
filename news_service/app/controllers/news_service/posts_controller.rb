class NewsService::PostsController < NewsService::ApplicationController
  def index
    @posts = NewsService::Post.all
  end

  def show
    @post = NewsService::Post.find(params[:id])
  end
end
