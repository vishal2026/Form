Rails.application.routes.draw do
  
  get '/', to: 'user#index'		
  get 'email', to: 'user#email'
  get 'city', to: 'user#show_cities'
  post 'view', to: 'user#view'
  root 'user#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
