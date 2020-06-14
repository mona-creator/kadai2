Rails.application.routes.draw do
  devise_for :users
  root 'tops#index'
  get 'home/about' => 'abouts#index'
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
end
   resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
