Rails.application.routes.draw do

    resources :artists, only: [:index, :show]
    resources :instruments, only: [:index]
    resources :plays, only: [:new, :create]
  
end
