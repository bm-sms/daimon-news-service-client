class PostsController < ApplicationController
  def index
    @posts = NewsClient::Post.all
  end

  def show
    @post = NewsClient::Post.find(params[:id])
  end
end
