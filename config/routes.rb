Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'login', to: 'authentication#authenticate'
      post 'signup', to: 'users#create'
      match 'user', to: 'users#show', via: 'get'
      # resources :users
    end
  end
end
