Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'users', to: 'users#index', as: :users
  get 'users/:id', to: 'users#show', as: :user
  get 'user/new', to: 'users#new', as: :new_user
  post 'users', to: 'users#create'
  # Defines the root path route ("/")
  # root "articles#index"
end
