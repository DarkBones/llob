require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq', :as => 'sidekiq'

  resources :uploads
end
