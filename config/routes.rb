Rails.application.routes.draw do
  devise_for :users
# resources :todolists, only:[index create delete]
resources :todolists
root to:'todolists#index'
end
 