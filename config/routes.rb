Rails.application.routes.draw do
  get 'first/home'

  get 'first/help'

  get 'first_compshome/help'

  root 'application#start'
end
