Rails.application.routes.draw do
  root 'welcome#index'

  mount NewsService::Engine => '/press'
end
