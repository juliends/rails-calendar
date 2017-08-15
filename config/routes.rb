Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles, except: [:destroy, :new, :create, :show ]
end
