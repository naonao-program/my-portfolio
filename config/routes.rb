Rails.application.routes.draw do
  root to: 'homes#top'
  get "about" => "homes#about"
  resources :blogs, only:[:index]
  resources :cameras, only:[:index]
  get "programming-portfolio" => "programming#index"
end
