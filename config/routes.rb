Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:new, :create]
    member do
       patch 'cocktails/:id/complete', to: 'cocktails#complete', as: :complete
    end
  end

  # root 'doses#index'
  resources :doses, only: [:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
