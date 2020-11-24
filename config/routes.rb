Rails.application.routes.draw do
  resources :histoires
  resource :accueil
  root "accueil#index"
  devise_for :auteurs, controllers: { confirmations: 'confirmations' }
end
