Rails.application.routes.draw do
  root 'feelings#index'
  resources :feelings do
    collection do
      post :confirm
    end
  end
end
