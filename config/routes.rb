Rails.application.routes.draw do
  root 'coffees#index'
  resources :coffees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
