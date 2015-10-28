class NewsService::ViewsGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../../../../app/views/news_service', __FILE__)

  desc 'Copy views from news_service to application'
  def copy_views
    case file_name
    when 'posts'
      copy_posts_views
    else
      raise 'Unsupported generator.'
    end
  end

  private

  def copy_posts_views
    filename_pattern = File.join(self.class.source_root, 'posts', '*.html.erb')

    Dir.glob(filename_pattern).map {|f| File.join('posts', File.basename(f)) }.each do |f|
      copy_file f, "app/views/news_service/#{f}"
    end
  end
end
