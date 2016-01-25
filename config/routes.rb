Rails.application.routes.draw do
  resources :models
  resources :applications

  root to: "applications#index"
end
