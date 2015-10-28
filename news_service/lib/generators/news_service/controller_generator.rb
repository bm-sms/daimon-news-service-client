class NewsService::ControllerGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  desc 'Creates news_service controller'
  def create_controller
    # TODO Validates controller name

    template 'controller.rb', "app/controllers/news_service/#{file_name}_controller.rb"
  end
end
