Rails.application.routes.draw do
  root 'drinks#index'
  resources :drinks do
    resources :photos
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
