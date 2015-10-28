class NewsService::ViewsGenerator < Rails::Generators::Base
  source_root File.expand_path('../../../../app/views/news_service', __FILE__)

  desc 'Copies news_service views to your application'
  def copy_views
    filename_pattern = File.join(self.class.source_root, 'posts', '*.html.erb')

    Dir.glob(filename_pattern).map {|f| File.join('posts', File.basename(f)) }.each do |f|
      copy_file f, "app/views/news_service/#{f}"
    end
  end
end
