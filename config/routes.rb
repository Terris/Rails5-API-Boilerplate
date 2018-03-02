Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
