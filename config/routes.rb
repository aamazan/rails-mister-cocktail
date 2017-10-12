Rails.application.routes.draw do
  # get 'doses/index'

  # get 'cocktails/index'

  root 'cocktails#index'
  resources :cocktails do
    resources :doses
    member do
       patch 'cocktails/:id/complete', to: 'cocktails#complete', as: :complete
    end
  end

  # root 'doses#index'
  resources :doses do
    member do
       patch 'doses/:id/complete', to: 'doses#complete', as: :complete
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
