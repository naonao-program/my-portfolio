Rails.application.routes.draw do
  devise_for :admins
  root to: 'homes#top'
  get "about" => "homes#about"
  resources :blogs, only:[:index]
  resources :cameras, only:[:index, :new, :create]
  get "programming-portfolio" => "programming#index"
  resources :programming, only:[:new, :create]
end
