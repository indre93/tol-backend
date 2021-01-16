Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :discussions, only: [:index, :create, :show] do
        resources :users, only: [:index, :create] do
          resources :comments, only: [:index, :create]
        end
      end
    end
  end

end
