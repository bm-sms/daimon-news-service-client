class NewsService::ControllerGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  desc 'Creates news_service controller to your application'
  def create_controller
    template 'controller.rb', "app/controllers/news_service/posts_controller.rb"
  end
end
