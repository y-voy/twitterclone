Rails.application.routes.draw do
  root 'feelings#new'
  resources :feelings do
    collection do
      post :confirm
    end
  end
end
