Rails.application.routes.draw do

  #root defined as home page from the first controller 
  root 'first#home'

  #defining URL routes for the other first controller static pages
  get '/help', to: 'first#help'

  get '/about', to: 'first#about'

  #main
  resources :messages
end
