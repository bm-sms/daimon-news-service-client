NewsService.controller(:posts) do
  def index
    super

    @new_arrival_posts = NewsService::Post.all.take(2)
  end
end
