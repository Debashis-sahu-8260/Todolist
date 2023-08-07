Rails.application.routes.draw do
  devise_for :users
# resources :todolists, only:[index create delete]
  resources :todolists
  delete 'todolists/:id', to: 'todolists#destroy', as: :destroy_todolist
  root to:'todolists#index'
end
 