Rails.application.routes.draw do
  require 'sidekiq/web'
  # simple route configuration
  mount Sidekiq::Web => '/sidekiq'

  # route configuration with devise authentication
  # authenticate :user do
  #   mount Sidekiq::Web => '/sidekiq'
  # end

  # route configuration with devise authentication and permission
  # authenticate :user, lambda { |u| u.admin? } do
  #   mount Sidekiq::Web => '/sidekiq'
  # end
end
