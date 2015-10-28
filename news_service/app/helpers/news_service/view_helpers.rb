module NewsService::ViewHelpers
  private

  def render_post_detail(post)
    post.as_html.html_safe
  end

  # TODO Support `views_prefix` inspired by kaminari. see: https://github.com/amatsuda/kaminari#helpers
  def render_posts_as_large_list(posts)
    render 'large_list', posts: posts
  end

  def render_posts_as_small_list(posts)
    render 'small_list', posts: posts
  end
end
