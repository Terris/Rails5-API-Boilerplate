Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      post 'login', to: 'authentication#authenticate'
      post 'signup', to: 'users#create'
      get 'authuser', to: 'authentication#authenticated_user'
    end
  end
end
