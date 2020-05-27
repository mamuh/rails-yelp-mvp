Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'

  resources :restaurants, except: [:destroy, :update, :edit] do
    resources :reviews, only: %i[index new create]
  end
end
