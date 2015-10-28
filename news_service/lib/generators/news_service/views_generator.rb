class NewsService::ViewsGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../../../../app/views/news_service', __FILE__)

  desc 'Copies news_service views to your application'
  def copy_views
    filename_pattern =
      case file_name
      when 'all'
        '*.html.erb'
      when 'partial'
        '_*.html.erb'
      when 'layout'
        '*.html.erb' # TODO Ignore partial
      else
        raise "Unsupported type: `#{file_name}`. Please use the one of candidates(partial, layout or all)"
      end

    filepath_pattern = File.join(self.class.source_root, 'posts', filename_pattern)

    Dir.glob(filepath_pattern).map {|f| File.join('posts', File.basename(f)) }.each do |f|
      copy_file f, "app/views/news_service/#{f}"
    end
  end
end
