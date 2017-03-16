Rails.application.routes.draw do
  get 'suggestions/new'

  root 'first#home'

  get '/help', to: 'first#help'

  get '/about', to: 'first#about'

  get '/new', to: 'suggestions#new'
end
