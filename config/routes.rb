Rails.application.routes.draw do
  resources :ideas, only: :index

  get "thank_you", to: "ideas#thank_you"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "ideas#index"
end
