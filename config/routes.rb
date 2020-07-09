Rails.application.routes.draw do
  resources :expedients
  resources :destinations
  resources :responsibles
  resources :exp_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
