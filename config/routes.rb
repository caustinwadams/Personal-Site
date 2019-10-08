Rails.application.routes.draw do

  get 'static_pages/home'
  get 'static_pages/resume'
  root 'static_pages#home'
  get '/resume', to: 'static_pages#resume'
end
