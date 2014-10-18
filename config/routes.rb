Rails.application.routes.draw do
  resources :workers
  root "workers#index"
end
