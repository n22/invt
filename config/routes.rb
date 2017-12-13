Rails.application.routes.draw do
  root to: redirect('/deposits')
  resources :deposits do
    resource :download, only: [:show]
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
