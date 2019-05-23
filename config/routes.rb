Rails.application.routes.draw do
  root 'home#index'
  resources :poderes
  resources :personagens

  resources :personagens do
    member do
        get  :show
        post :show
        delete :destroy
    end
end
end
