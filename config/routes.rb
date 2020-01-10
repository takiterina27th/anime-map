Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
  root 'posts#index'
  get 'posts/display', to: 'posts#display'
  get 'posts/search', to: 'posts#search'
  get 'posts/mypage', to: 'posts#mypage'
  get 'posts/new', to: 'posts#new'
  get 'posts/:id', to: 'posts#show'
end
