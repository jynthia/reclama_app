Rails.application.routes.draw do

  root 'first#home'

  get '/help', to: 'first#help'

  get '/about', to: 'first#about'

  resources :messages
end
