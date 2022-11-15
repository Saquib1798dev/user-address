Rails.application.routes.draw do
  namespace :users do
    resources :addresses
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
