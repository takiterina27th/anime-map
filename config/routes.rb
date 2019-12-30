Rails.application.routes.draw do
  root 'posts#index'
  get 'posts/login', to: 'posts#login'
  get 'posts/regstration', to: 'posts#regstration'
end
