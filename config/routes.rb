Rails.application.routes.draw do
  
  root 'static_pages#index'
  get 'main/index'
  get 'main', to: 'main#index'
  get '/main/read/:id', to: 'main#read'

  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
