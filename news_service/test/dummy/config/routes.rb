Rails.application.routes.draw do

  mount NewsService::Engine => "/news_service"
end
