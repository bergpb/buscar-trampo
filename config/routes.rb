Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  
  root to: 'pages#home'
  resources :jobs, only: [:index, :show]
end
