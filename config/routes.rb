Rails.application.routes.draw do
  root 'posts#index'
  get 'posts/login', to: 'posts#login'
  get 'posts/regstration', to: 'posts#regstration'
  get 'posts/display', to: 'posts#display'
  get 'posts/search', to: 'posts#search'
  get 'posts/new', to: 'posts#new'
  get 'users/index', to: 'users#index'
end
