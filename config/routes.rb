Rails.application.routes.draw do
  resources :feelings
  root 'feelings#new'
end
