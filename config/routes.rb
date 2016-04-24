Rails.application.routes.draw do
  resources :markers
  resources :trails
  resources :users
  post '/users/authenticate', to: 'users#authenticate'
  get '/trails/:id/markers', to: 'trails#markers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
