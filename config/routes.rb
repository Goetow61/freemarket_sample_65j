Rails.application.routes.draw do
  root to: 'top#show'
  resources :top, only: [:index, :show]
end
