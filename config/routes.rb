Rails.application.routes.draw do
  post '/movies/create_from_csv', to: 'movies#create_from_csv'
  get '/movies', to: 'movies#index'
end

