Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
  root 'posts#index'

  resources :posts do
    resources :comments, only: [:create]
    collection do
      get :display
      get :search
      get :mypage
    end
  end
end
