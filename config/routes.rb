Rails.application.routes.draw do
  get 'information/index'

  resources :people

  root 'information#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
