Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/users', to: 'users#create'
      get '/motors', to: 'motors#index'
      get '/motors/:id', to: 'motors#show'
      post '/motors/create', to: 'motors#create'
      delete '/motor/:id/destroy', to: 'motors#destroy'
      post '/reservations', to: 'reservations#create'
      get '/reservations', to: 'reservations#index'
    end
  end
end
