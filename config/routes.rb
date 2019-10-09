Rails.application.routes.draw do

  get 'blogs/new'
  get 'blogs/index'
  get 'blogs/show'
  get 'static_pages/home'
  get 'static_pages/resume'
  root 'static_pages#home'
  get '/resume', to: 'static_pages#resume'
  get '/blogs',   to: 'blogs#index'

  resources :blogs  
end
