Rails.application.routes.draw do
  resources :authors
  resources :books # CRUD books
  
  resources :users, param: :_username
  post '/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'

end
