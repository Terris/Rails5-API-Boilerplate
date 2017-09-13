Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :goals do
        member do
          get :completed
        end
      end
    end
  end
end
