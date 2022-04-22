Rails.application.routes.draw do
  resources :im_get_requests
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "im_get_requests#index"
end
