Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  get '/heroines/filter', to: 'heroines#filter', as: 'filter_heroine'
  resources :heroines, only: [:index, :show, :new, :create]  
end
