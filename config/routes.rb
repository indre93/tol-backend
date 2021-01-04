Rails.application.routes.draw do

  resources :discussions do
    resources :comments
  end

end
