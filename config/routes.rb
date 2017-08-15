Rails.application.routes.draw do
  root to: 'articles#index'

  resources :article, except: [:destroy, :new, :create, :show ]
end
