Rails.application.routes.draw do
  root 'application#start'

  get 'first/home'

  get 'first/help'
end
