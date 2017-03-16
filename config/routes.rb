Rails.application.routes.draw do
  root 'first#home'

  get 'first/home'

  get 'first/help'

  get 'first/about'
end
