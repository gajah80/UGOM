Rails.application.routes.draw do

  get 'bangsas/new'

  get 'bangsas/create'

  get "setup/dun"

    resources :admins
    resources :branches
    resources :voters
    resources :bangsas

    root "home#index"
end
