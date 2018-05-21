Rails.application.routes.draw do
  root to:'pages#home'

  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact'
  # get 'pages/home'

  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/:id', to: 'restaurants#show'
  post 'restaurants', to: 'restaurants#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
