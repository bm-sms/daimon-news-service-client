class NewsService::PostsController < NewsService::ApplicationController
  layout :detect_layout

  def index
    @posts = NewsService::Post.all
    @new_arrival_posts = NewsService::Post.new_arrival
    @popular_posts = NewsService::Post.popular
  end

  def show
    @post = NewsService::Post.find(params[:id])
    @new_arrival_posts = NewsService::Post.new_arrival
    @popular_posts = NewsService::Post.popular
  end
end
