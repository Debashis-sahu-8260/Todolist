Rails.application.routes.draw do
# resources :todolists, only:[index create delete]
resources :todolists
root to:'todolists#index'
end
 