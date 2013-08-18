MokkaDevelopers::Application.routes.draw do
  devise_for :users

  root to: "topics#index"

  resources :topics do
    resources :replies, only: [:create, :destroy]
  end
end
