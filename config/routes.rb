Rails.application.routes.draw do
  root to: 'homes#top'
  get "about" => "homes#about"
  resources :blogs, only:[:index]
  get "camera-portfolio" => "cameras#index"
  get "programming-portfolio" => "programming#index"
end
