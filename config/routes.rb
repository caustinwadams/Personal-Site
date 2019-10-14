Rails.application.routes.draw do

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'blogs/new'
  get 'blogs/index'
  get 'blogs/show'
  get 'static_pages/home'
  get 'static_pages/resume'
  root 'static_pages#home'
  get '/resume',    to: 'static_pages#resume'
  get '/blogs',     to: 'blogs#index'
  get 'new_blog',   to: 'blogs#new'
  post 'new_blog',  to: 'blogs#create'
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :blogs  
end
