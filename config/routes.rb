Rails.application.routes.draw do
  resources :issues, only: [ :index, :show ] do
    resources :comments, only: :create
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
