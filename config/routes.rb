Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :customers, only: [] do 
        resources :orders, only: [:index, :create], module: :customers
      end
      resources :orders, only: [:index, :show] do
        post "ship", on: :member
        resources :products, only: [:index, :create]
      end
    end
  end
end
