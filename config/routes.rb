Rails.application.routes.draw do
  get 'view_form_details/index'
  get 'registration/index'
  get 'registration/email'
  get 'registration/show_cities'
  post 'registration/view'
  root 'registration#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
