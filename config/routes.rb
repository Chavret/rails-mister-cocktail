Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  get '/', to: "cocktails#index"

  resources :cocktails do
    resources :doses, only: [:index, :new, :create, :destroy]
  end
  #resources :doses, only: [:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
