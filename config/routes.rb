Rails.application.routes.draw do
  resources :markers
  resources :trails
  post '/users/authenticate', to: 'users#authenticate'
  resources :users
  get '/trails/:id/markers', to: 'trails#markers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
