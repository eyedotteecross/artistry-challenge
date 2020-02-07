Rails.application.routes.draw do
    resources :artists, except: [:edit,:update,:delete] 
    resources :instruments, only: [:index]
    resources :artist_instruments, only: [:create, :new]


  
end
