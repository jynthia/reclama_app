Rails.application.routes.draw do
  root 'first#home'

  get '/help', to: 'first#help'

  get '/about', to: 'first#about'

  get '/submit', to: 'first#submit'
end
