Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
  resources :users, only: [:show]

  root 'posts#index'

  resources :posts do
    resources :comments, only: [:create]
    resources :likes, only: [:create, :destroy]
    collection do
      get :display
      get :search
      get :mypage
    end
  end
end
