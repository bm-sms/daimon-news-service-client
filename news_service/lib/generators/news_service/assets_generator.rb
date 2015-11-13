class NewsService::AssetsGenerator < Rails::Generators::Base
  source_root File.expand_path('../../../../app/assets', __FILE__)

  desc 'Copies news_service assets to your application'
  def copy_assets
    %w(javascripts stylesheets).each do |type|
      filepath_pattern = File.join(self.class.source_root, type, 'news_service', '*')

      Dir.glob(filepath_pattern).map {|f| File.join(type, 'news_service', File.basename(f)) }.each do |f|
        copy_file f, "app/assets/#{f}"
      end
    end
  end
end
