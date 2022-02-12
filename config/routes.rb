Rails.application.routes.draw do
  root to: 'homes#top'
  resources :blogs, only:[:index]
  get "camera-portfolio" => "cameras#index"
  get "programming-portfolio" => "programming#index"
end
